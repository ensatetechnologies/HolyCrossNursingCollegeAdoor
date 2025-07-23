@if(isset($scrollingBarItems) && count($scrollingBarItems) > 0)
<div style="background: #f0f0f0; padding: 2px 0;">
<marquee behavior="scroll" direction="left" scrollamount="4" style="color: #0056b3; font-weight: bold; font-size: 16px;">
    📢 Updates:
    @foreach($scrollingBarItems as $index => $item)
        @php
            $url_field_value = '';
            // Check if item has fields and find URL field (type 16)
            if(isset($item->fields) && count($item->fields) > 0) {
                foreach($item->fields as $field) {
                    if($field->field_id) {
                        // Find the custom field definition
                        $customField = \App\Models\WebmasterSectionField::find($field->field_id);
                        if($customField && $customField->type == 16) {
                            $url_field_value = $field->field_value ?? '';
                            break;
                        }
                    }
                }
            }
            
            // Ensure the URL is properly formatted
            if($url_field_value && !filter_var($url_field_value, FILTER_VALIDATE_URL)) {
                if(!preg_match('/^https?:\/\//', $url_field_value)) {
                    $url_field_value = 'http://' . $url_field_value;
                }
            }
            
            $link_url = $url_field_value ?: '#';
        @endphp
        
        <a href="{{ $link_url }}" 
           target="{{ $url_field_value ? '_blank' : '_self' }}"
           style="color: #0056b3; text-decoration: none; margin-right: 20px;"
           onmouseover="this.style.textDecoration='underline'"
           onmouseout="this.style.textDecoration='none'"
           title="{{ $url_field_value ? 'Click to open: ' . $url_field_value : ($item->title_en ?? 'Link') }}">
            {{ $item->title_en ?? 'Untitled' }}
        </a>
        @if($index < count($scrollingBarItems) - 1), @endif
    @endforeach
</marquee>
</div>
@endif