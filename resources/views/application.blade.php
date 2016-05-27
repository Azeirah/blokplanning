<!DOCTYPE html>
<html>
<head>
    <title>Laravel</title>

    <link href="{{ asset('components/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <script src="{{ asset('components/bootstrap/js/bootstrap.min.js') }}"></script>

    <link rel="stylesheet" href="{{ asset('css/welcome.css') }}">
</head>
    <body>
    <div class="container-fluid">
        <div class="btn-group">
            @foreach ($opleidingen as $opleiding)
                <button class="btn">{{ $opleiding }}</button>
            @endforeach
        </div>
        <br>
        <div class="btn-group">
            <button class="btn">Blok1</button>
            <button class="btn">Blok2</button>
            <button class="btn">Blok3</button>
            <button class="btn">Blok4</button>
            <button class="btn active">Blok5</button>
        </div>
        <br>

        <div class="taken col-md-3" style="height: 600px; border-right: 1px solid red;">
            <ul>
                <li>Project lift</li>
                <li>Engels 1</li>
                <li>Nederlands 1</li>
            </ul>
        </div>
        <div class="info col-md-9" style="height: 600px;">
            <h2 style="text-align: center">taken info</h2>
        </div>
    </div>
    </body>
</html>
