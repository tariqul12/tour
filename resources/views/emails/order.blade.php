<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <style>
        /* General styles */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        table {
            border-spacing: 0;
            width: 100%;
        }

        td {
            padding: 0;
        }

        .wrapper {
            width: 100%;
            table-layout: fixed;
            background-color: #f4f4f4;
            padding: 20px 0;
        }

        .main {
            background: #ffffff;
            margin: 0 auto;
            width: 100%;
            max-width: 600px;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .header {
            background: #0073e6;
            color: #ffffff;
            text-align: center;
            padding: 20px 0;
            font-size: 24px;
            font-weight: bold;
        }

        .content {
            padding: 20px;
            font-size: 16px;
            line-height: 1.5;
            color: #333333;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .table th,
        .table td {
            border: 1px solid #dddddd;
            padding: 8px;
            text-align: left;
        }

        .table th {
            background-color: #f2f2f2;
        }

        .footer {
            text-align: center;
            padding: 10px 0;
            background: #eeeeee;
            font-size: 12px;
            color: #777777;
        }

        @media (max-width: 600px) {
            .main {
                width: 90%;
            }
        }
    </style>
</head>

<body>
    <div class="wrapper">
        <table class="main" align="center">
            <tr>
                <td class="header">
                    New Package Order Received
                </td>
            </tr>
            <tr>
                <td class="content">
                    <p>Hello Admin,</p>
                    <p>You have received a new package order. Here are the details:</p>

                    <table class="table">
                        <tr>
                            <th>Order ID</th>
                            <td>#{{ $mailData['id'] }}</td>
                        </tr>
                        <tr>
                            <th>Customer Name</th>
                            <td>{{ $mailData['name'] }}</td>
                        </tr>
                        <tr>
                            <th>Email</th>
                            <td>{{ $mailData['email'] }}</td>
                        </tr>
                        <tr>
                            <th>Phone</th>
                            <td>{{ $mailData['mobile'] }}</td>
                        </tr>
                        <tr>
                            <th>Address</th>
                            <td>{{ $mailData['address'] }}</td>
                        </tr>
                        <tr>
                            <th>Package Name</th>
                            <td>{{ $mailData['package_title'] }}</td>
                        </tr>
                        <tr>
                            <th>Order Date</th>
                            <td>{{ \Carbon\Carbon::parse($mailData['date'])->format('d M Y, h:i A') }}</td>
                        </tr>
                    </table>

                    <p>Please log in to the admin panel to process the order.</p>
                    <p>Best regards,<br>Team {{ $company_front->company_name }}</p>
                </td>
            </tr>
            <tr>
                <td class="footer">
                    © 2024 {{ $company_front->company_name }}. All rights reserved.<br>
                    <a href="{{ route('policy.page') }}" style="color: #0073e6;">Privacy Policy</a> | <a href="#"
                        style="color: #0073e6;">Terms of Service</a>
                </td>
            </tr>
        </table>
    </div>
</body>

</html>
