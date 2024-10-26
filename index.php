<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spotify Database 2024</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center list-title">Top Streaming Songs on Spotify in 2024:</h2>

        <!-- Spotify Logo (clickable link) -->
        <div class="text-center mb-4">
            <a href="https://open.spotify.com/playlist/2YRe7HRKNRvXdJBp9nXFza" target="_blank">
                <img src="img/Spotify_Primary_Logo_RGB_Green.png" alt="Spotify Logo" class="img-fluid">
            </a>
        </div>

        <!-- Song List: -->
        <div class="row">
        <?php
        //Function to display songs
        function displaySongs() {
            $servername = "localhost:8889";
            $username = "root";
            $password = "root";
            $dbname = "http5225_spotifydb";

        //Creating Connection
        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // SQL query SELECT:
        $sql = "SELECT * FROM `spotify_data`";
        $result = $conn->query($sql);

        // Loop Through Data:
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $class = (stripos($row["Artist"], 'A') === 0) ? 'highlight' : 'default';

                //Dividing each song with Bootstrap cards
                echo "<div class='col-md-4 mb-4'>";
                echo "<div class='card'>";
                echo "<div class='card-body'>";
                echo "<h5 class='card-title'>" . htmlspecialchars($row["Song"]) . "</h5>";
                echo "<p class='card-text'>Artist: " . htmlspecialchars($row["Artist"]) . "</p>";
                echo "</div></div></div>";
            }
        } else {
                echo "<p class='alert alert-warning'>No results found.</p>";
            }

                $conn->close();
            }

            displaySongs();
            ?>
        </div>
    </div>
</body>
</html>