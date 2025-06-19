@if(count($scrollingBarItems) > 0)
<div style="background: #f0f0f0; padding: 2px 0;">
<marquee behavior="scroll" direction="left" scrollamount="4" style="color: #0056b3; font-weight: bold; font-size: 16px;">
    📢 Updates:
    {{ $scrollingBarItems->pluck('title_en')->implode(', ') }}
</marquee>
</div>
@endif