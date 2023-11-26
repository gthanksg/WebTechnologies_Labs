<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>\
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<jsp:include page="../layouts/default.jsp" />
<div class="uk-container uk-margin-medium">
    <h4 class="uk-heading-bullet uk-margin-small-bottom">Make a reservation</h4>
    <div class="uk-margin-bottom">
        <c:forEach items="${resultList}" var="booking" varStatus="status">
            <div class="uk-card uk-margin uk-card-default uk-card-body uk-card-small">
                <h5 class="uk-text-bolder">Booking from <i><c:out value="${booking.booking_time}"/></i></h5>
                <hr>
                <div>
                    Amount of guests: <i><c:out value="${booking.booking_amount}"/></i> • Booking date: <i><c:out value="${booking.booking_date}"/></i> •
                    <c:if test="${booking.approved eq 1}">
                        Status: <span class="uk-text-success uk-text-italic">Approved</span>
                    </c:if>
                    <c:if test="${booking.approved eq 0}">
                        Status: <span class="uk-text-primary uk-text-italic">Pending review by administrator</span>
                    </c:if>
                    <c:if test="${booking.approved eq 2}">
                       Status: <span class="uk-text-danger uk-text-italic">Not approved</span>
                    </c:if>
                </div>

            </div>
        </c:forEach>
    </div>
    <h4 class="uk-heading-bullet uk-margin-small-bottom">Make a reservation</h4>
    <div class="uk-card uk-card-body uk-card-default">
        <form action="${pageContext.request.contextPath}/CreateBookingServlet" method="post">
            <div class="uk-flex uk-flex-center uk-flex-middle">
                <div class="uk-width-1-2">
                    <h5 class="uk-margin-small-bottom">Pick a date for reservation</h5>
                    <label>
                        <input type="date" class="uk-input" required name="date">
                    </label>
                </div>
                <div class="uk-margin-left uk-width-1-2">
                    <h5 class="uk-margin-small-bottom">Amount of guests</h5>
                    <label>
                        <input type="number" min="1" max="99" class="uk-input" required name="amount">
                    </label>
                </div>
            </div>
            <div class="uk-text-right uk-margin-top">
                <button type="submit" class="uk-button uk-button-primary">
                    Request a reservation
                </button>
            </div>
        </form>
    </div>
</div>
<jsp:include page="../layouts/footer.jsp" />