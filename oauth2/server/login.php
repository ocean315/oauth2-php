
<?php
session_start();
if(isset($_POST['user_id']) && isset($_POST['password'])) {
	$user_id = $_POST['user_id'];
	$password = $_POST['password'];
	# if($username == $password) {
		$_SESSION['user_id'] = $user_id;
		header('Location: /oauth2/server/authorize.php');
		exit();
	# } else {
		# header('Location: /oauth2/index.php');
	# }
}
?>
<html>
<form action='' method='post'>
	<input type='text' name='user_id' placeholder='User ID' />
	<br />
	<input type='password' name='password' placeholder='Password' />
	<br />
	<input type='submit' value='Login' />
</form>
</html>