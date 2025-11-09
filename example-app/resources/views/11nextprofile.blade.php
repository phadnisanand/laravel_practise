<!-- {{ 5+2 }}
<br><br>
{{ "Hello World" }}
<br><br>
<h1>{{ "Hello World" }}</h1>
<h1>{!! "<h1>Yahoo Baba</h1>" !!}</h1>
 {{ "<script>alert('Yahoo Baba')</script>" }} -->


<!-- 
@php
    $user = 'Yahoo Baba';
    $names = ["Anand Phadnis", "Sudhir Phadnis"];
@endphp -->

<!-- {{ $user }} -->
<!-- 
<ul>
    @foreach($names as $name)
        <li> {{ $loop->index }} {{ $name }} </li>
    @endforeach
</ul>  -->


 <!-- @foreach($names as $name)
   {{ $loop->index }} {{ $name }}  <br />
@endforeach -->

<!-- @foreach($names as $name)
   {{ $loop->iteration }} {{ $name }}  <br />
@endforeach -->

<!-- 
<table class="table">
    @foreach ($products as $product)
        <tr>
            <td>name -{{ $product['name'] }}</td>
            <td>price -{{ $product['price'] }}</td>
            <td>quantity- {{ $product['quantity'] }}</td>
        </tr>
    @endforeach
</table> -->

 @foreach($names as $name)
   {{ $loop->index }} {{ $name }}  <br />
@endforeach