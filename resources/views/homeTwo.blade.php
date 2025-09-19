<!-- @php

$name = "<h1>Hello</h1>";

@endphp

{!!$name!!} -->


<!-- ---if else condition--- -->

{{-- @if($value=="1")
{{'The value is 1'}}

@elseif($value=="2")
{{'The value is 2'}}
    
@else
{{'The value is not 1 and not 2'}}
@endif --}}



<!-- ---While Loop--- -->

<!-- @php $i=0 @endphp

@while($i<10)

{{$i}}
@php $i++; @endphp

@endwhile -->




<!-- ---foreach loop using arry--- -->

<!-- @php $arr = ['hello', 'amit', 'vishwakarma', 'web developer'] @endphp

@foreach($arr as $val)
{{$val}}
@endforeach -->


<!-- ---Isset---  when value is present then it will run -->
 <!-- @isset($value)
 {{"Hello ".$value}}
 @endisset -->




<!-- ---Unless--- it is similar than if conditon but it will run opposite  -->
@unless($value=='youtube')
{{ 'Value is not youtube'. $value}}
@endunless
