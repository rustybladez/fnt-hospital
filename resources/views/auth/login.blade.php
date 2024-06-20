<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Login</title>
    <link href="{{ asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('css/datepicker3.css')}}" rel="stylesheet">
    <link href="{{asset('css/styles.css')}}" rel="stylesheet">

    <style>
        body {
            background-image: url('{{ asset("images/login-bg.jpeg") }}');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-panel {
            max-width: 100%;
            width: 400px;
            margin: 0 auto;
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .panel-heading {
            text-align: center;
            font-size: 1.5em;
        }
    </style>

</head>

<body>

    <!-- <div class="row">
        <div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4"> -->
    <div class="login-panel panel panel-default">
        <div class="panel-heading">{{$setting->name}}</div>
        <div class="panel-body">
            @if ($success = Session::get('success'))
            <div class="alert alert-success alert-block">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong>{{ $success }}</strong>
            </div>
            @endif
            @if(count($errors))
            <div class="alert alert-danger alert-block">
                <button type="button" class="close" data-dismiss="alert">×</button>
                @foreach($errors->all() as $error)
                <strong>{{ $error }}</strong>
                @endforeach
            </div>
            @endif


            <form role="form" method="POST" action="{{ route('login') }}">
                {{ csrf_field() }}
                <fieldset>
                    <div class="form-group">
                        <input class="form-control" placeholder="Username" name="name" type="text" autofocus="" required="">
                    </div>
                    <div class="form-group">
                        <input class="form-control" placeholder="Password" name="password" type="password" value="" required="">
                    </div>
                    @if ($errors->has('password'))
                    <span class="help-block">
                        <strong></strong>
                    </span>
                    @endif
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Remember Me
                        </label>
                    </div>
                    <button type="submit" class="btn btn-success">Login</a>
                </fieldset>
            </form>
        </div>
    </div>
    <!-- </div>
    </div> -->
    </script>
</body>

</html>