
<table class="table">
    @foreach ($products as $product)
        <tr>
            <td>name -{{ $product['name'] }}</td>
            <td>price -{{ $product['price'] }}</td>
            <td>quantity- {{ $product['quantity'] }}</td>
        </tr>
    @endforeach
</table>