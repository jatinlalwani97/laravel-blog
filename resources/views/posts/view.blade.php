@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default text-center">
                <div class="panel-heading">Post View</div>

                <div class="panel-body">
                    <div class="col-md-4">

                        <ul>
                            @if(count($categories) >0)
                                @foreach($categories->all() as $category)
                                    <li class="list-group-item"><a href='{{ url("category/{$category->id}") }}'>
                                    {{$category->category}}
                                    </a></li>
                                @endforeach
                            @else
                                <p>no Category found!</p>
                            @endif    
                        </ul>                    
                    </div>
                    <div class="col-md-8">
                        @if(count($posts)>0)
                            @foreach($posts->all() as $post)
                                <h4>{{$post->post_title}}</h4>
                                <img src="{{$post->post_image}}" alt="">
                                <p>{{$post->post_body}}</p>

                                <ul class="nav nav-pills">
                                    <li role="presentation">
                                        <a href='./like/{{  $post->id }}'>
                                            <span>LIKE</span>
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a href='./dislike/{{  $post->id }}'>
                                            <span>dislike</span>
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a href='url("/delete//{$post->id}")'>
                                            <span>DELETE</span>
                                        </a>
                                    </li>
                                </ul>


                            @endforeach
                        @else
                            <p>no post available</p>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
