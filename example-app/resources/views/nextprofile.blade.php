
 @foreach($names as $name)
   @if ($loop->even)
          <li style="color: red;">{{ $name }}</li >
   @elseif ($loop->odd)
          <li style="color: green;">{{ $name }}</li >
   @endif
@endforeach