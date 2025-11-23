<!DOCTYPE html>
<html>
<head>
    @include('layouts.header')
    
</head>
<body>
    <header>
        @include('layouts.sidebar')
    </header>
    <div class="container">
        @yield('content')
        @include('anotherview', ['name' => 'John Doe', 'age' => 30])
    </div>
    <footer>
         @include('layouts.footer')
    </footer>
</body>
</html>