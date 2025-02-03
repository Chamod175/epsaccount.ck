<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Song Tag Sheet Maker</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 100%;
            padding: 20px;
            margin-top: 50px;
        }
        .content {
            max-width: 600px;
            margin: 0 auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            margin-top: 20px;
        }
        .music-logo {
            width: 150px;
            height: 150px;
            margin: 0 auto;
        }
        @media (max-width: 767px) {
            .container {
                padding: 10px;
            }
            .content {
                padding: 15px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="content">
            <div class="text-center">
                <img src="https://png.pngtree.com/element_our/sm/20180415/sm_5ad31d9b53530.png" alt="Music Logo" class="music-logo">
            </div>
            <h2 class="text-center">Song Tag Sheet Maker</h2>
            <form id="songForm">
                <div class="mb-3">
                    <label for="title" class="form-label">Title</label>
                    <input type="text" class="form-control" id="title" required>
                </div>
                <div class="mb-3">
                    <label for="artist" class="form-label">Artist</label>
                    <input type="text" class="form-control" id="artist" required>
                </div>
                <div class="mb-3">
                    <label for="genre" class="form-label">Genre</label>
                    <input type="text" class="form-control" id="genre">
                </div>
                <div class="mb-3">
                    <label for="br" class="form-label">Bitrate</label>
                    <input type="text" class="form-control" id="br" value="kbps">
                </div>
                <div class="mb-3">
                    <label for="rl" class="form-label">Record Label</label>
                    <input type="text" class="form-control" id="rl">
                </div>
                <div class="mb-3">
                    <label for="year" class="form-label">Release Date</label>
                    <input type="date" class="form-control" id="year">
                </div>
                <button type="button" class="btn btn-primary w-100" onclick="AddRow()">Create</button>
                <button type="button" class="btn btn-danger w-100 mt-2" onclick="ClearFields()">Clear</button>
            </form>

            <textarea id="copyText" class="form-control mt-3" rows="3" readonly></textarea>
            <button class="btn btn-secondary w-100 mt-2" onclick="CopyDetails()">Copy Details</button>

            <table class="table table-bordered mt-4" id="show">
                <thead class="table-dark">
                <tbody></tbody>
            </table>
        </div>
    </div>

    <script>
        function AddRow() {
            let table = document.getElementById("show").getElementsByTagName('tbody')[0];
            let row = table.insertRow();
            
            let title = document.getElementById("title").value;
            let artist = document.getElementById("artist").value;
            let genre = document.getElementById("genre").value;
            let br = document.getElementById("br").value;
            let rl = document.getElementById("rl").value;
            let year = document.getElementById("year").value;
            
            document.getElementById("copyText").value = `Title: ${title}\nArtist: ${artist}\nGenre: ${genre}\nBitrate: ${br}\nRecord Label: ${rl}\nRelease Date: ${year}`;
        }

        function CopyDetails() {
            let copyText = document.getElementById("copyText");
            copyText.select();
            copyText.setSelectionRange(0, 99999);
            document.execCommand("copy");
            alert("Details copied to clipboard!");
        }

        function ClearFields() {
            document.getElementById("title").value = "";
            document.getElementById("artist").value = "";
            document.getElementById("genre").value = "";
            document.getElementById("br").value = "kbps";
            document.getElementById("rl").value = "";
            document.getElementById("year").value = "";
            document.getElementById("copyText").value = "";
        }
    </script>
</body>
</html>
