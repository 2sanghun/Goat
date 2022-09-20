function search_check(num) {
	if (num == '1') {
		$("#searchId")[0].style.display = "";
		$("#searchPw")[0].style.display = "none";
	} else {
		$("#searchId")[0].style.display = "none";
		$("#searchPw")[0].style.display = "";
	}
}
