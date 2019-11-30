/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function MorgageCalculator(){
	var amount = document.getElementById('amount').value;
	var interest_rate = document.getElementById('interest_rate').value;
	var months = document.getElementById('months').value;
	var interest = (amount * (interest_rate * .01)) / months;
	var payment = ((amount / months) + interest).toFixed(2);
	payment = payment.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	document.getElementById('payment').innerHTML = "Monthly Payment = $"+payment;
}