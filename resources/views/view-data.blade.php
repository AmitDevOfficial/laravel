<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>View Data</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    
    <div class="container-fluid">
        <h1 class="text-center my-5">View Data</h1>

       <div class="row d-flex">
         <div class="col-6">
            <a href="{{url('/form')}}" class="btn btn-primary my-3">Add</a>
        </div>

        <div class="col-6">
             <form class="d-flex" action="view" method="get">
                <input class="form-control me-2" type="search" name="search" placeholder="Search"/>
                <input class="btn btn-outline-success" type="submit" value="search">
            </form>
        </div>
       </div>
        

        <table class="table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Image</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Date of Join</th>
                    <th>Gender</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>

            <thead>
                @foreach($employee as $key => $val)
                <tr>
                    <td>{{++$key}}</td>
                    <td><img src="{{asset('storage/app/private/uploads/'.$val['image'])}}" alt="" width="80"></td>
                    <td>{{$val['fullName']}}</td>
                    <td>{{$val['email']}}</td>
                    <td>{{$val['address']}}</td>
                    <td>{{$val['doj']}}</td>
                    <td>{{$val['gender']}}</td>
                    <td>
                        @if($val['status']=='1')
                            <span class="badge bg-success text-white">Active</span>
                        @else
                            <span class="badge bg-danger text-white">UnActive</span>
                        @endif
                    </td>
                    <td>
                        <a href="{{url('/edit',['empId'=>$val['id']])}}" class="btn btn-success">Update</a>
                        <a href="{{url('/delete',['empId'=>$val['id']])}}" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
                @endforeach
            </thead>
        </table>
        <div class="row">
            <div class="col">
                {{$employee->links('pagination::bootstrap-5')}}
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>