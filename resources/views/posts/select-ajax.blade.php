<option>--- Select One ---</option>
@if(!empty($get_data))
  @foreach($get_data as $key => $value)
  @if(!empty($select))
    <option {{$select}} value="{{ $value->id }}">{{ $value->name_bn }} | {{ $value->name_en }} </option>
    
    @else
    <option value="{{ $value->id }}">{{ $value->name_bn }} | {{ $value->name_en }} </option>
  
    @endif
  @endforeach
@endif