<?php
	//Count paid order that have not received testimonial
	$countUntestify = $front->countUntestifyOrder($loginID);
  	
  	//grab user account info
  	$bankInfo = $front->bankInfo($loginID);
  	
  	//grab user ph info
  	$countPHs = $front->countPHs($loginID);

	
	//Force user to write testimony
	if($countUntestify > 0){
		$genInfo->redirect(BASE_URL.'user/testimonial');
		exit();
	}

	//Redirect to verification if status is Pending
	if($userInfo['status'] == 'Pending'){
		$genInfo->redirect(BASE_URL.'user/verification');
		exit();
	}

	//Redirect Bank entery page if empty
	if(!isset($bankInfo['bank']) 
		OR $bankInfo['bank'] == ''){
		$genInfo->redirect(BASE_URL.'user/bank-details');
		exit();
	}

	//Redirect Package page if user has not PH
	if($countPHs < 1){
		$genInfo->redirect(BASE_URL.'user/packages');
		exit();
	}
?>