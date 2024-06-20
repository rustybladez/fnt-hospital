@extends('layouts.app')
@section('content')  

    <div class="col-md-12 main">           
        <div class="row">
            <ol class="breadcrumb">
                <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                <li class="active">Dashboard</li>
            </ol>
        </div>
        <!--/.row-->
       
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Dashboard</h2>
            </div>
        </div><!--/.row-->
         @if ($message = Session::get('success'))
            <div class="alert alert-success alert-block">
                <button type="button" class="close" data-dismiss="alert">×</button> 
                    <strong>{{ $message }}</strong>
            </div>
        @endif
        <div class="row">
            <div class="col-xs-12 col-md-6 col-lg-3">
                <div class="panel panel-orange panel-widget">
                    <div class="row no-padding">
                        <div class="col-sm-2 col-lg-3 widget-left">
                        <i class="fas fa-notes-medical fa-3x"></i>
                        </div>
                        <div class="col-sm-10 col-lg-9 widget-right">
                            <div class="large">{{$pending['appointment']}}</div>
                            <div class="text-muted">Pending Appointment</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-md-6 col-lg-3">
                <div class="panel panel-blue panel-widget ">
                    <div class="row no-padding">
                        <div class="col-sm-3 col-lg-5 widget-left">
                        <i class="fas fa-users fa-3x"></i>
                        </div>
                        <div class="col-sm-9 col-lg-7 widget-right">
                            <div class="large">{{$patients->count()}}</div>
                            <div class="text-muted">Total Patient</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-md-6 col-lg-3">
                <div class="panel panel-teal panel-widget">
                    <div class="row no-padding">
                        <div class="col-sm-3 col-lg-5 widget-left">
                        <i class="fas fa-vial fa-3x"></i>
                        </div>
                        <div class="col-sm-9 col-lg-7 widget-right">
                            <div class="large">{{$total_test}}</div>
                            <div class="text-muted">Total Test</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-md-6 col-lg-3">
                <div class="panel panel-red panel-widget">
                    <div class="row no-padding">
                        <div class="col-sm-3 col-lg-5 widget-left">
                        <i class="fas fa-user-md fa-3x"></i>
                        </div>
                        <div class="col-sm-9 col-lg-7 widget-right">
                            <div class="large">{{$total_doctor}}</div>
                            <div class="text-muted">Total Doctor</div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/.row-->
        
        <div class="row">
            
            <!-- Appointment for today -->
             <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">Today's Appointment</div>
                    <div class="panel-body">
                         <table id="table1" class="display table table-bordered table-condensed table-hover" cellspacing="0" width="100%">
                            <thead>
                               <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Patient</th>
                                <th>Doctor</th>
                                <th>Description</th>
                                <th>Time</th>
                                <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=1;?>
                                @foreach($appointments as $appointment)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$appointment->name}}</td>
                                    <td>{{$appointment->patient->first_name}} {{$appointment->patient->last_name}}</td>
                                    <td>{{$appointment->doctor->employee->first_name}} {{$appointment->doctor->employee->middle_name}} {{$appointment->doctor->employee->last_name}}</td>
                                    <td>{{$appointment->description}}</td>
                                    <td>{{$appointment->time}}</td>
                                    <td>
                                     @if($appointment->status)
                                    <a class="btn-sm btn-success" href="{{ route('appointment.edit',$appointment->id) }}"><span class=" glyphicon glyphicon-ok"></span> Complete</a>    
                                    @else
                                    <a class="btn-sm btn-warning" href="{{ route('appointment.edit',$appointment->id) }}"><span class=" glyphicon glyphicon-refresh"> </span> Pending</a>
                                    @endif
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>                 
                        </table>
                    </div>
                </div>
            </div>
            <!-- Appointmet table ends -->
            <div class="col-lg-12">
            <!-- Today invoice collection -->
                <div class="panel panel-default">
                    <div class="panel-heading">Today's Collection</div>
                    <div class="panel-body">
                        <table id="table" class="display table table-bordered table-condensed" cellspacing="0" width="100%">
                            <thead>
                               <tr>
                               <th>#</th>
                                <th>Invoice No</th>
                                <th>Payment</th>
                                <th>Sub Total</th>
                                <th>Discount</th>
                                <th>Tax</th>
                                <th>Total Amount</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php $i=1;?>
                            @foreach($invoices as $invoice)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$invoice->invoice_no}}</td>
                                    <td>{{$invoice->payment_type}}</td>
                                    <td>Tk {{number_format($invoice->sub_total, 2)}}</td>
                                    <td>Tk {{$invoice->discount}}</td>
                                    <td>Tk {{number_format($invoice->tax_amount, 2)}}</td>
                                    <td>Tk {{number_format($invoice->total_amount)}}</td>
                                </tr>@endforeach
                            </tbody>
                                 <tr>
                                    <th></th>
                                    <th>Total:</th>
                                    <th></th>
                                    <th>Tk {{number_format($total['sub_total'], 2)}}</th>
                                    <th>Tk {{$total['discount']}}</th>
                                    <th>Tk {{number_format($total['tax_amount'], 2)}}</th>
                                    <th>Tk {{number_format($total['total_amount'])}}</th>
                                </tr>                    
                        </table>
                    </div>
                </div>
            </div>
            <!-- Today collection ends -->
            <!-- opd table -->
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">Today's OPD</div>
                    <div class="panel-body">
                         <table id="example" class="display table table-bordered table-condensed table-hover" cellspacing="0" width="100%">
                            <thead>
                               <tr>
                                <th>#</th>
                                <th>Patient</th>
                                <th>Doctor</th>
                                <th>Register At</th>
                                <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=1;?>
                                @foreach($opds as $opd)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$opd->invoice->patient->first_name}} {{$opd->invoice->patient->last_name}}</td>
                                    <td>{{$opd->doctor->employee->first_name}} {{$opd->doctor->employee->middle_name}} {{$opd->doctor->employee->last_name}}</td>
                                    <td>{{$opd->created_at}}</td>
                                    @if($opd->status == 1)
                                    <td><span class="btn-sm btn-success glyphicon glyphicon-ok"> Complete</span></td>
                                    @else
                                    <td><a class="btn-sm btn-warining" href="{{ route('doctor.edit',$opd->id) }}"><span class=" glyphicon glyphicon-refresh"> Pending</span></a> </span></td>
                                    @endif
                                </tr>
                                @endforeach
                            </tbody>                 
                        </table>
                    </div>
                </div>
            </div>

        </div><!--/.row-->
        </div>
        

    <script type="text/javascript">
        $(document).ready(function(){
            $('#table').DataTable();
            $('#table1').DataTable();

        });
    </script>
@endsection
