
   </div>
</body>
</html>
<script type="text/javascript">
						function formCallback(result, form) {
							window.status = "valiation callback for form '" + form.id + "': result = " + result;
						}
						
						var valid = new Validation('test', {immediate : true, onFormValidate : formCallback});
						Validation.addAllThese([
							['validate-password', 'Your password must be more than 6 characters and not be \'password\' or the same as your name', {
								minLength : 7,
								notOneOf : ['password','PASSWORD','1234567','0123456'],
								notEqualToField : 'field1'
							}],
							['validate-password-confirm', 'Your confirmation password does not match your first password, please try again.', {
								equalToField : 'field8'
							}]
						]);
</script>
	