<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">
<header class="bg-white shadow-md py-4">
    <div class="container mx-auto flex justify-between items-center px-6">
        <a href="/"><h1 class="text-xl font-bold">Brand</h1></a>
        <nav>
            <ul class="flex space-x-6">
                <li class="nav-item"><a class="nav-link" href="{{ route('home') }}">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="{{ route('about') }}">About</a></li>
                <li class="nav-item"><a class="nav-link" href="{{ route('contact') }}">Contact</a></li>
            </ul>
        </nav>
    </div>
</header>
<main class="container mx-auto mt-10 px-6 text-center">
    @yield('content')
</main>
<footer class="mt-10 py-6 bg-white text-center shadow-md">
    <p class="text-gray-600">&copy; 2025 Brand. All rights reserved.</p>
</footer>
</body>
</html>
