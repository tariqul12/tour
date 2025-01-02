<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Fortify\TwoFactorAuthenticatable;
use Laravel\Jetstream\HasProfilePhoto;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    private static $user, $image, $imageName, $directory, $imageUrl;
    use HasApiTokens;
    use HasFactory;
    use HasProfilePhoto;
    use Notifiable;
    use TwoFactorAuthenticatable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
        'two_factor_recovery_codes',
        'two_factor_secret',
    ];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array<int, string>
     */
    protected $appends = [
        'profile_photo_url',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    private static function getImageUrl($request)
    {
        self::$image = $request->file('image');
        self::$imageName = rand(1000000, 50000000).'.'.self::$image->getClientOriginalExtension();
        self::$directory = 'uploads/user-images/';
        self::$image->move(self::$directory, self::$imageName);
        return self::$directory.self::$imageName;
    }


    public static function newUser($request)
    {
        self::$user = new User();
        self::$user->name       = $request->name;
        self::$user->email      = $request->email;
        self::$user->password   = bcrypt($request->password);
        //self::$user->mobile     = $request->mobile;
        //self::$user->user_type  = $request->user_type;
        if ($request->file('image'))
        {
            self::$user->profile_photo_path      = self::getImageUrl($request);
        }
        self::$user->save();
        return self::$user;
    }

    public static function updateUser($request, $id)
    {
        self::$user = User::find($id);
        if ($request->file('image'))
        {
            if (file_exists(self::$user->profile_photo_path))
            {
                unlink(self::$user->profile_photo_path);
            }
            self::$imageUrl = self::getImageUrl($request);
        }
        else
        {
            self::$imageUrl = self::$user->image;
        }
        self::$user->name       = $request->name;
        self::$user->email      = $request->email;
        if ($request->password)
        {
            self::$user->password   = bcrypt($request->password);
        }
        //self::$user->mobile     = $request->mobile;
        self::$user->profile_photo_path      = self::$imageUrl;
        self::$user->save();
        return self::$user;
    }

    public static function deleteUser($id)
    {
        self::$user = User::find($id);
        if (file_exists(self::$user->profile_photo_path))
            {
                unlink(self::$user->profile_photo_path);
            }
        self::$user->Delete();
    }

    public function roles()
    {
        return $this->belongsToMany('App\Models\Role', 'user_role', 'user_id', 'role_id');
    }

    public function hasAnyRole($roles) {
        if(is_array($roles)) {
            foreach ($roles as $role) {
                if($this->hasRole($role)) {
                    return true;
                }
            }
        } else {
            if($this->hasRole($roles)) {
                return true;
            }
        }
        return false;
    }

    public function hasRole($role) {
        if($this->roles()->where('name', $role)->first()) {
            return true;
        }
        return false;
    }
}
