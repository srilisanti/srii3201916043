<div class="news-event-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 news-inner-area">
                <h2 class="title-default-left">Berita Terbaru</h2>
                <ul class="news-wrapper">
                    @foreach ($berita as $beritas)
                        <li>
                            <div class="news-img-holder">
                                <a href="{{route('detail.berita', $beritas->slug)}}"><img src="{{asset('storage/images/berita/' .$beritas->thumbnail)}}" class="img-responsive" alt="news" style="max-height: 100px; max-weidth:100px"></a>
                            </div>
                            <div class="news-content-holder">
                                <h3><a href="{{route('detail.berita', $beritas->slug)}}">{{$beritas->title}}</a></h3>
                                <div class="post-date">{{Carbon\Carbon::parse($beritas->created_at)->format('d F Y')}}</div>
                            </div>
                        </li>
                    @endforeach
                </ul>
                <div class="news-btn-holder">
                    <a href="{{route('berita')}}" class="view-all-accent-btn">Lihat Semua</a>
                </div>
            </div>
            </div>
        </div>
    </div>
</div>