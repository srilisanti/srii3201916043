<div class="footer-area-top">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="footer-box">
                    <a href="/">
                        @if (@$footer->logo == NULL)
                            <img class="img-responsive" src="{{asset('Assets/Frontend/img/logo.jpeg')}}" alt="logo" width="100px">
                        @else
                            <img class="img-responsive" src="{{asset('storage/images/logo/' .$footer->logo)}}" alt="logo">
                        @endif
                    </a>
                    <div class="footer-about">
                        <p> {{@$footer->desc}} </p>
                    </div>
                    <ul class="footer-social">
                    
                        <li><a href="{{'https://www.twitter.com/',@$footer->twitter}}" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="{{'https://www.facebook.com/',@$footer->facebook}}" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="{{'https://www.instagram.com/',@$footer->instagram}}" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="footer-box">
                    <h3>Website Sekolah</h3>
                    <div class="newsletter-area">
                        <h3>MTs Negeri 01 Kayong Utara</h3>
                        <div class="input-group stylish-input-group">
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="footer-box">
                    <h3>Photos</h3>
                    <ul class="flickr-photos">
                        <li>
                            <a href="#"><img class="img-responsive" src="{{asset('Assets/Frontend/img/slider/sekolah2.jpeg')}}" alt="flickr"></a>
                        </li>
                        <li>
                            <a href="#"><img class="img-responsive" src="{{asset('Assets/Frontend/img/slider/sekolah.jpeg')}}" alt="flickr"></a>
                        </li>
                        <li>
                            <a href="#"><img class="img-responsive" src="{{asset('Assets/frontend/img/footer/8.jpeg')}}" alt="flickr"></a>
                        </li>
                        <li>
                            <a href="#"><img class="img-responsive" src="{{asset('Assets/Frontend/img/slider/sekolah3.jpeg')}}" alt="flickr"></a>
                        </li>
                        <li>
                            <a href="#"><img class="img-responsive" src="{{asset('Assets/Frontend/img/slider/sekolah5.jpeg')}}" alt="flickr"></a>
                        </li>
                        <li>
                            <a href="#"><img class="img-responsive" src="{{asset('Assets/frontend/img/footer/7.jpeg')}}" alt="flickr"></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer-area-bottom">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                <p>&copy; {{date('Y')}} <a>MTs Negeri 01 Kayong Utara</a> All Rights Reserved.</p>
            </div>
        </div>
    </div>
</div>