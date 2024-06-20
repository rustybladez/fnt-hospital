<link href="{{ asset('css/bootstrap.min.css')}}" rel="stylesheet" crossorigin="anonymous">

<style type="text/css">
	#print {

		margin: auto;
		width: 100%;
		border: 3px solid green;
		padding: 10px;

		min-height: calc(100vh - 120px);

		position: relative;
	}

	table {
		font-size: 14px;
	}

	.prepare {
		position: absolute;
		bottom: 10px;
		right: 10px;
		text-align: right;
		background-color: #fff;
		padding: 5px;
		border: 1px solid #ccc;
		border-radius: 5px;
	}

	.inwords {

		font-size: 16px;
		margin-right: 10px;

		text-align: right;
		margin-bottom: 30px;
	}

	.inwords-text {
		display: inline-block;
		background-color: #fff;
		padding: 5px;
		border: 1px solid #ccc;
		border-radius: 5px;
	}

	h3 {
		margin-top: 2px;
	}

	hr {
		border: 1px solid;
		margin-top: 2px;
		margin-bottom: 2px;
	}

	address {
		margin-bottom: 2px;
	}

	.money-receipt {
		font: Arial, sans-serif;
		font-size: 16px;
		border: 1px solid;
		border-radius: 3px;
		max-width: 30%;
		font-weight: bold;
	}

	.information {
		display: flex;
		justify-content: space-between;
		margin-top: 10px;
		margin-bottom: 10px;
		margin-left: 0px;
		padding-left: 0px;
	}


	ul {
		list-style: none;
		display: table;
		padding-left: 0;
		/* Remove default padding */
		margin: 0;
		/* Remove default margin */
	}

	li {
		display: table-row;
	}

	.colon-text {
		display: table-cell;
		padding-right: 2em;
	}

	.amount-col {
		text-align: right;
	}

	.total-col {
		text-align: right;
	}

	.total-col-text {
		text-align: left;
	}

	.discount-row td {
		border-top: none !important;
		/* Remove top border */
		border-bottom: none !important;
		/* Remove bottom border */
	}

	.paid-text {
		font: Arial, sans-serif;
		font-size: 24px;

		border: 3px solid green;
		border-radius: 10px;
		padding: 2px 2px;
		display: inline-block;

		font-weight: bold;
		color: green;
	}

	.footer {
		height: 90px;
		text-align: center;
	}

	@media print {
		.btn {
			display: none;
		}

	}
</style>
<div id="print">
	<div class="row">
		<div class="col-md-12" align="center">
			<h3>{{$setting->name}}</h3>
			<hr>
			<strong>{{$setting->address}}</strong>
			<address>Phone: {{$setting->contact}}</address>
			<hr>
			<p class="money-receipt">MONEY RECEIPT</p>
		</div>
		<div class="col-md-12 information">
			<div class="col-md-6 patient">
				<ul>
					<li><strong class="colon-text">Patient </strong>&nbsp;&nbsp;&nbsp;: {{$invoices->patient->first_name}} {{$invoices->patient->last_name}}</li>
					<!-- <strong>Patient ID: </strong>{{ $setting->patient_prefix}}{{$invoices->patient->id}}<br> -->
					<!-- @if(isset($invoices->report_id))
					<li><strong class="colon-text">Report No. {{$setting->invoice_prefix.$invoices->report_id}}</strong></li>
					@endif -->
					<li><strong class="colon-text">Age </strong>&nbsp;&nbsp;&nbsp;:
						@if($invoices->patient->age > 1)
						{{$invoices->patient->age}}Y 0M 0D
						@else
						{{ $age}}
						@endif
					</li>
					<li><strong class="colon-text">Sex </strong>&nbsp;&nbsp;&nbsp;: {{$invoices->patient->gender}}</li>
					<li><strong class="colon-text">Phone </strong>&nbsp;&nbsp;&nbsp;: {{$invoices->patient->phone}}</li>
					<!-- <li><strong class="colon-text">DOB </strong>&nbsp;&nbsp;&nbsp;: {{$invoices->patient->birth_date}}</li> -->

					<!-- <strong>Payment: </strong>{{$invoices->payment_type}}<br> -->
				</ul>
			</div>
			<div class="col-md-6">
				<ul>
					<li><strong class="colon-text">Date </strong>: {{$invoices->created_at}}</li>
					<li><strong class="colon-text">Invoice# </strong>: {{$invoices->invoice_no}}</li>
					<li><strong class="colon-text">Referred By </strong>: {{$invoices->doctor_name}}</li>
				</ul>
			</div>
		</div>

		<!-- <br><br> -->
		<div class="col-md-12">
			<table class="table table-condensed">
				<thead>
					<tr>
						<th>S.N.</th>
						<th>Particular</th>
						<th></th>
						<th class="amount-col">Amount</th>
					</tr>
				</thead>
				<tbody>
					<?php $i = 1; ?>
					@if($invoices->services)
					@foreach($invoices->serviceSales()->get() as $sales)
					<tr>
						<td>{{$i++}}</td>
						<td>{{$sales->service_name}}</td>
						<td></td>
						<td class="amount-col">{{number_format($sales->amount, 2)}}</td>
					</tr>
					@endforeach
					@elseif($invoices->opd)
					@foreach($invoices->opd_sales()->get() as $sales)
					<tr>
						<td>{{$i++}}</td>
						<td>{{$sales->opd_name}}</td>
						<td></td>
						<td class="amount-col">{{number_format($sales->opd_charge,2)}}</td>
					</tr>
					@endforeach
					@else
					@foreach($invoices->packageSales()->get() as $sales)
					<tr>
						<td>{{$i++}}</td>
						<td>{{$sales->package->name}}</td>
						<td></td>
						<td class="amount-col">{{number_format($sales->package_price, 2)}}</td>
					</tr>
					@endforeach
					@endif

					<tr>
						<td></td>
						<td></td>
						<td class="total-col-text"><strong>Sub Total </strong></td>
						<td class="total-col">{{number_format($invoices->sub_total, 2)}}</td>
					</tr>

					<tr class="discount-row">
						<td></td>
						<td class="paid-text">PAID</td>
						<td class="total-col-text"><strong>Discount </strong></td>
						<td class="total-col">{{$invoices->discount}}</td>
					</tr>
					<!-- <tr>
				<td></td><td></td><td><strong>HST({{$setting->tax_percent}}%): </strong>Tk {{number_format($invoices->tax_amount,2)}}</td>
			</tr> -->
					<tr class="discount-row">
						<td></td>
						<td></td>
						<td class="total-col-text"><strong>Grand Total </strong></td>
						<td class="total-col">{{number_format($invoices->total_amount)}}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="inwords">
			<p class="inwords-text"> <strong>Inwords: </strong>{{ ucwords(convert_number_to_words($invoices->total_amount)) }} Taka Only</p>
		</div>
		<div class="col-md-6 prepare">

			<strong>Prepared By: {{ $invoices->user->name}} </strong><br>
		</div>
		<!-- <div class="col-md-6" align="right">
			<strong>Cash: </strong>Tk {{ $invoices->cash}}<br>
			----------------------------<br>
			<strong>Return: </strong>Tk {{ number_format($invoices->return, 2)}}<br>	
		</div><br> -->
		<!-- <div class="col-md-12">{{$setting->invoice_message}}</div> -->
	</div>
</div>

<footer class="footer">
	<h4>৩০ দিনের মধ্যে রিপোর্ট না নিলে কর্তৃপক্ষ দায়ী নয়।</h4>
	<hr>
	<code><strong class="credit">Developed by Al-Hera Soft, Savar, Dhaka. Contact: 01581-170598</strong></code>
</footer>
<!-- <br> -->
<div align="center">
	<a href="{{url('/')}}" class="printbtn btn btn-primary" type='button' onclick="Function()"><span class="glyphicon glyphicon-print"></span> Print</a>
	<a href="{{url('invoice')}}" class="btn btn-default">Back</a>
</div>


<script>
	function Function() {
		window.print();
		window.focus();


	}
</script>