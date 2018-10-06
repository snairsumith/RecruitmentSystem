<%-- 
    Document   : footer
    Created on : Oct 5, 2018, 1:16:21 PM
    Author     : Gayathri
--%>

<footer class="footer">
    <div class="d-sm-flex justify-content-center justify-content-sm-between">
        <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2018 <a href="https://www.urbanui.com/" target="_blank">Urbanui</a>. All rights reserved.</span>
        <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
    </div>
</footer>
<!-- partial -->
</div>
<!-- main-panel ends -->
</div>
<!-- page-body-wrapper ends -->
</div>
</div>
<spring:url value="/resources/vendors/js/vendor.bundle.base.js" var="baseJS" />
<spring:url value="/resources/vendors/js/vendor.bundle.addons.js" var="addonsJS" />
<spring:url value="/resources/js/off-canvas.js" var="canvasJS" />
<spring:url value="/resources/js/hoverable-collapse.js" var="hoverable-collapseJS" />
<spring:url value="/resources/js/misc.js" var="miscJS" />
<spring:url value="/resources/js/settings.js" var="settingsJS" />
<spring:url value="/resources/js/todolist.js" var="todolistJS" />
<spring:url value="/resources/js/user.js" var="userJS" />

<script src="${baseJS}"></script>
<script src="${addonsJS}" ></script>
<script src="${canvasJS}" ></script>
<script src="${hoverable-collapseJS}"></script>
<script src="${miscJS}" ></script>
<script src="${settingsJS}" ></script>
<script src="${todolistJS}" ></script>
<script src="${userJS}" ></script>

</body>
