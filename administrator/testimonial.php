<?php 
  require("../includes/config.php");
  require_once(ROOT_PATH . "core/backEnd-wrapper.php");  
  //Privilege Settings
  $accounting = 'true';
  $editor = 'true';
  require_once(ROOT_PATH . "core/adminSession.php");

  //
  if(isset($_GET['tsid']) AND $_GET['tsid'] != ''){
    $tsID = intval($_GET['tsid']);
  }else{
    $genInfo->redirect(BASE_URL.'administrator/testimonials');
    exit();
  }

  $testimy = $adm->myTestimonialSingle($tsID);

  if(empty($testimy)){
    $genInfo->redirect(BASE_URL.'administrator/testimonials');
    exit();
  }

  //Grab user info
  if(isset($_POST['message'])) {
    $video = $_POST['video'];
    $message = $_POST['message'];
    
    //Validate
    if($message == "") {
      $error[] = 'You can not submit empty Testimony, please write your testimony!';
    } 

    if(!isset($error)){
      try {
        //User credibility reward
        if($testimy['status'] != 1){
          if($video != ''){
            $score = $configInfo['credit_video_testimony'];
            $action = 'Reward for submitting Video of happiness in the community';
          }else{
            $score = $configInfo['credit_testimony'];
            $action = 'Reward for submitting Letter of happiness in the community';
          }
          
          $stmt = $genInfo->runQuery("INSERT INTO user_credibility(
              login_id, action, score, date_added)

            VALUES(:loginID, :action, :score, :currentTime)");
        
          $stmt->execute(array(':loginID'=>$testimy['login_id'], ':action'=>$action, ':score'=>$score, ':currentTime'=>$currentTime));
        }

        //Update testimonials TABLE
        $stmt = $genInfo->runQuery("UPDATE testimonials
          SET content=:message, video=:video, status=1
          WHERE id=:tsID");

        $stmt->execute(array(
          ':tsID'=>$tsID,
          ':message'=>$message, 
          ':video'=>$video));


        //Insert Into user notification table
        $action = 'The administrator has approved your testimony!';
        $actionUrl = 'user/user-testimonials';
        $type = 'Testimony Approval';

        $genInfo->userNotification($testimy['login_id'], $action, $type, $actionUrl, $currentTime);

        //Insert Into admin notification table
          $action = $admInfo['username'].'. has approved submitted Testimonial!';
          $actionUrl = 'testimonial?tsid='.$tsID;
          $type = 'Testimonial Approval';
          $username = $admInfo['username'];

          $genInfo->admNotification($username, $action, $type, $actionUrl, $currentTime);
      }
      catch(PDOException $e) {
        echo $e->getMessage();
      }
      $genInfo->redirect(BASE_URL.'administrator/testimonial?tsid='.$tsID.'&updated');
      exit();
    }
  }

  $pageTitle = "Edit Testimony";
  $pageDesc = "Description";
  $pageKeywords = "Keywords";

  include(ROOT_PATH."administrator/includes/header.php"); 
  include(ROOT_PATH."administrator/includes/navMenu.php"); 
?>
 <link rel="stylesheet" href="assets/plugins/summernote/dist/summernote.css">

        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />

<!-- for Add more dynamic Input -->
<script src="http://code.jquery.com/jquery-2.1.1.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>


<!-- ============================================================== -->
<!-- Start right Content here -->
<!-- ============================================================== -->
<div class="content-page">
<!-- Start content -->
<div class="content">
<div class="container">

<!-- Page-Title -->
<div class="row">
<div class="col-sm-12">
<ol class="breadcrumb">
  <li><a href="<?php echo BASE_URL;?>administrator/dashboard">Dashboard</a></li>
  <li><a href="<?php echo BASE_URL;?>administrator/testimonials">Testimonials</a></li>
  <li class="active">Edit Testimony</li>
</ol>
</div>
</div>

<?php
    if(isset($error)){
        foreach($error as $error){?>
         <div class="alert alert-danger">
            <i class="fa fa-exclamation-triangle"></i> &nbsp; <?php echo $error; ?>
         </div>
<?php } }elseif(isset($_GET['updated'])){?>
 <div class="alert alert-success">
    <i class="fa fa-check-square"></i> &nbsp; Testimony Approved!
 </div>
<?php }?>
<div class="row">

<!-- Right Sidebar -->
<div class="col-lg-12 col-md-12">

<div class="row">
<div class="col-sm-12">
  <div class="card-box m-t-20">
    <div class="p-20">
      <form role="form" action="" method="post">
        <div class="form-group">
          <textarea rows="6" class="form-control" name="message"><?php if(isset($message)){echo $message;}else{echo $testimy['content'];}?></textarea>
        </div>
        <div class="form-group">
          <label>Youtube Video <span style="color:#999;font-style:italic;">Optional</span> </label>
          <input type="text" class="form-control" placeholder="Past your youtube video embed code here..." name="video" value='<?php if(isset($video)){echo $video;}else{echo $testimy['video'];}?>'>
        </div>         
        <div class="btn-toolbar form-group m-b-0">
          <div class="pull-right">
            <button type="submit" class="btn btn-success waves-effect waves-light"> <span>Approve</span> <i class="fa fa-send m-l-10"></i> </button>
          </div>
      </div>
    </form>
    </div>
  </div>
</div>
</div>

<!-- End row -->
</div> <!-- end Col-9 -->
</div><!-- End row -->
</div> <!-- container -->
</div> <!-- content -->

<?php include(ROOT_PATH."administrator/includes/footer.php");?>
<!-- jQuery  -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/detect.js"></script>
<script src="assets/js/fastclick.js"></script>
<script src="assets/js/jquery.slimscroll.js"></script>
<script src="assets/js/jquery.blockUI.js"></script>
<script src="assets/js/waves.js"></script>
<script src="assets/js/wow.min.js"></script>
<script src="assets/js/jquery.nicescroll.js"></script>
<script src="assets/js/jquery.scrollTo.min.js"></script>


<script src="assets/js/jquery.core.js"></script>
<script src="assets/js/jquery.app.js"></script>
