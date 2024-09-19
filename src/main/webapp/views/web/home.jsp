<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Survey</title>
    <!-- Bootstrap CSS -->
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <link href="<c:url value='/template/style.css' />" rel="stylesheet" type="text/css" media="all"/>--%>
<%--    <style>--%>
<%--        h1, h2 {--%>
<%--            color: teal;--%>
<%--        }--%>
<%--    </style>--%>
</head>
<body>
<div class="container">
    <div class="text-center">
        <img class="img-fluid mb-4 logo" src="https://www.southeastlinuxfest.org/wp-content/uploads/2014/06/Murach_image-300x300.jpg" alt="Logo">
        <h1 class="display-4">Survey</h1>
        <p>If you have a moment, we'd appreciate it if you would fill out this survey</p>
    </div>

    <form action="<c:url value='/home'/>" method="post" class="needs-validation" novalidate>
        <h2>Your information</h2>
        <c:if test="${not empty message}">
            <div class="alert alert-danger">${message}</div>
        </c:if>

        <div class="mb-3">
            <label for="firstName" class="form-label">First Name</label>
            <input type="text" class="form-control" id="firstName" name="firstName" required>
            <div class="invalid-feedback">
                Please enter your first name.
            </div>
        </div>
        <div class="mb-3">
            <label for="lastName" class="form-label">Last Name</label>
            <input type="text" class="form-control" id="lastName" name="lastName" required>
            <div class="invalid-feedback">
                Please enter your last name.
            </div>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" required>
            <div class="invalid-feedback">
                Please enter a valid email address.
            </div>
        </div>
        <div class="mb-3">
            <label for="date" class="form-label">Date of Birth</label>
            <input type="date" class="form-control" id="date" name="date" required>
            <div class="invalid-feedback">
                Please enter your date of birth.
            </div>
        </div>

        <h2>How did you hear about us</h2>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="industry" id="searchEngine" value="Search engine" required>
            <label class="form-check-label" for="searchEngine">Search engine</label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="industry" id="wordOfMouth" value="Word of mouth" required>
            <label class="form-check-label" for="wordOfMouth">Word of mouth</label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="industry" id="socialMedia" value="Social Media" required>
            <label class="form-check-label" for="socialMedia">Social Media</label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="industry" id="other" value="Other" required>
            <label class="form-check-label" for="other">Other</label>
        </div>
        <div class="invalid-feedback d-block">
            Please select how you heard about us.
        </div>

        <h2>Would you like to receive announcements?</h2>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" name="yes" value="YES, I'd like that" id="yesOption1">
            <label class="form-check-label" for="yesOption1">YES, I'd like that</label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" name="yes" value="YES, please send me email announcements" id="yesOption2">
            <label class="form-check-label" for="yesOption2">YES, please send me email announcements</label>
        </div>

        <div class="mb-3">
            <label for="contact-method" class="form-label">Please contact me by</label>
            <select class="form-select" id="contact-method" name="contact-method" required>
                <option value="" disabled selected>Email or postal email</option>
                <option value="Email">Email</option>
                <option value="Postal email">Postal email</option>
            </select>
            <div class="invalid-feedback">
                Please select a contact method.
            </div>
        </div>

        <button class="btn btn-primary button-submit" type="submit">Submit</button>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script>
    (function () {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.prototype.slice.call(forms)
            .forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }

                    form.classList.add('was-validated')
                }, false)
            })
    })()
</script>
</body>
</html>
