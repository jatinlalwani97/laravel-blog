@extends('layouts.app')
<style type="text/css">
    .avatar{
        border-radius: 100%;
        max-width: 100px;
    }
</style>
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
        @if(count($errors)>0)
                    @foreach($errors->all() as $error)
                        <div class='alert alert-danger'>{{$error}}</div>
                    @endforeach
                @endif

                @if(session('response'))
                    <div class=alert alert-success>{{session('response')}}</div>
        @endif
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    <div class="col-md-4">
                    @if(!empty($profile))
                        <img src="{{ $profile->profile_pic}}" alt="" class="avatar">
                    @else
                        <img src="{{ url('images/avatar.png')}}" alt="" class="avatar">
                    @endif

                    @if(!empty($profile))
                        <p class="lead">{{ $profile->name}}</p>
                    @else
                        <p></p>
                    @endif

                    @if(!empty($profile))
                        <p>{{ $profile->designation}}</p>
                    @else
                        <p></p>
                    @endif
                        
                        
                        
                    </div>
                    <div class="col-md-8">
                        @if(count($posts)>0)
                            @foreach($posts->all() as $post)
                                <h4>{{$post->post_title}}</h4>
                                <img src="{{$post->post_image}}" alt="">
                                <p>{{substr($post->post_body,0,150)}}</p>

                                <ul class="nav nav-pills">
                                    <li role="presentation">
                                        <a href='./view/{{ $post->id }}'>
                                            <span>VIEW</span>
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a href='./edit/{{  $post->id }}'>
                                            <span>EDIT</span>
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a href='./delete/{{$post->id}}'>
                                            <span>DELETE</span>
                                        </a>
                                    </li>
                                </ul>

                                <cite style="float:left;">Posted on:{{date('M j, Y H:i', strtotime($post->updated_at))}}</cite>
                                <hr />
                            @endforeach
                        @else
                            <p>no post available</p>
                        @endif

                        {{$posts->links()}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
