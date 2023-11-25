<jsp:include page="../layouts/default.jsp" />
<div class="uk-container">
    <div class="uk-position-center uk-padding uk-card-default">
        <div class="uk-width-xlarge">
            <h4 class="uk-heading-line uk-text-center"><span>Register for a booking!</span></h4>
            <form action="${pageContext.request.contextPath}/CreateNewUserServlet" method="post">
                <h5 class="uk-margin-remove-bottom">name</h5>
                <span class="uk-margin-small uk-text-danger uk-text-small">Only English characters and numbers allowed.</span>
                <label>
                    <input type="text" class="uk-input" placeholder="name" name="Name..." required maxlength="100" pattern="[a-zA-Z0-9\s]+">
                </label>
                <h5 class="uk-margin-remove-bottom">Pick a username</h5>
                <span class="uk-margin-small uk-text-danger uk-text-small">Only lowercase english characters and numbers allowed.</span>
                <label>
                    <input type="text" class="uk-input" placeholder="username" name="Username..." required maxlength="50" pattern="[a-z0-9]+">
                </label>
                <h5 class="uk-margin-remove-bottom">Choose a password</h5>
                <span class="uk-margin-small uk-text-danger uk-text-small">Only english characters and numbers allowed.</span>
                <label>
                    <input type="password" class="uk-input" placeholder="password" name="Password..." required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" maxlength="20">
                </label>
                <div class="uk-text-right uk-margin-top">
                    <button type="submit" class="uk-button uk-button-primary">
                        Register
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
<jsp:include page="../layouts/footer.jsp" />