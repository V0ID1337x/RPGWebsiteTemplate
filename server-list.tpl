<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="">
    <title></title>

    <!-- Place your stylesheet here-->
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
    <header class="main-container">
     <div>
         <span class="version">Current Version: {{version}}</span>

         <span class="players">Players: {{players}}</span>
    </div>
       <div class="welcome-message">
            <a href="/"><img src="img/logo.png" alt=""></a>
            <div class="server-list-table">
            <table>
                <thead>
                    <tr>
                        <th>Hostname</th>
                        <th>Version</th>
                        <th>Slots</th>
                        <th>Gamemode</th>
                        <th>World</th>
                    </tr>
                </thead>
                <tbody>
                   % for server in servers:
                    <tr>
                        <td>{{server['hostname']}}</td>
                        <td>{{server['version']}}</td>
                        <td>{{server['slots']}}</td>
                        <td>{{server['gamemode']}}</td>
                        <td>{{server['world']}}</td>
                    </tr>
                    %end
                </tbody>
            </table>
            </div>
        </div>
    </header>

</body>
</html>