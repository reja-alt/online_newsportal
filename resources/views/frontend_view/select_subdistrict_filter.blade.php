<option>--- Select One ---</option>
@if(!empty($get_data))
  @foreach($get_data as $key => $value)
  @if(!empty($select))
    <option {{$select}} value="{{ $value->id }}">{{ $value->subdis_name_bn }}</option>
    <option {{$select}} value="{{ $value->id }}">{{ $value->subdis_name_en }}</option>
    @else
    <option value="{{ $value->id }}">{{ $value->subdis_name_bn }}</option>
    <option value="{{ $value->id }}">{{ $value->subdis_name_en }}</option>
    @endif
  @endforeach
@endif