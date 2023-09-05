<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>

    <!-- Fonts -->
    <link href="https://fonts.bunny.net/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">


</head>

<body class="m-10">

    <form action="{{ url('getlogin') }}" method="POST">
        <div class="mb-5"> <label for="name" class="block">Username: </label> <input type="text" id="email"
                name="name" class="border border-gray-300 p-1"> </div>
        <div class="mb-5"> <label for="password" class="block">Password: </label> <input type="password"
                name="password" id="password" class="border border-gray-300 p-1"> </div> <button type="submit"
            class="rounded bg-blue-800 text-white px-4 py-2">Log in</button>
    </form>
</body>


</html>
