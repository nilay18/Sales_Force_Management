<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:if test="${sessionScope.supplierview== null}">
   
 <jsp:forward page="supplier?hidden=supplier_view"></jsp:forward>
</c:if>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="initialization.jsp" %>

<body>
	<%@ include file="header.jsp" %>
		

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>
				<%@include file="sidebar.jsp" %>
				<div class="main-content">
					<%@include file="navigation.jsp" %>
					
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
																<div class="row">
									<div class="col-xs-12">
										<h3 class="header smaller lighter blue">Suppliers List</h3>
										<div class="table-header">
											Suppliers
										</div>

										<div class="table-responsive">
											<table id="sample-table-2" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th>ID</th>
														<th>Supplier</th>
														<th>
														<i class="icon-male bigger-110 hidden-480"></i>
														Contact Person</th>
														<th>
														<i class="icon-map-marker bigger-110 hidden-480"></i>
														Address</th>
														<th>
														<i class="icon-phone bigger-110 hidden-480"></i>
														Phone</th>
														<th>
														<i class="icon-file-text bigger-110 hidden-480"></i>
														Fax</th>

														<th></th>
													</tr>
												</thead>

												<tbody>
												<c:forEach items="${sessionScope.supplierview}" var="r">
																									<tr>
														<td><c:out value="${r.ids}"></c:out></td>
														<td><c:out value="${r.supplier}"></c:out></td>
														<td><c:out value="${r.contact}"></c:out></td>
														<td><c:out value="${r.address}"></c:out></td>
														<td><c:out value="${r.phone}"></c:out></td>
														<td><c:out value="${r.fax}"></c:out></td>

														<td>
															<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
																
																<a class="blue" href="supplier?hidden=supplierdetail_view&id=${r.ids}">
																	<i class="icon-zoom-in bigger-130"></i>
																</a>
																
																<a class="green" href="supplier?hidden=edit&id=${r.ids}">
																	<i class="icon-pencil bigger-130"></i>
																</a>

																<a class="red" href="supplier?hidden=delete&id=${r.ids}">
																	<i class="icon-trash bigger-130"></i>
																</a>
															</div>

																													</td>
													</tr>
																																							 
													</c:forEach>
													<c:remove var="supplierview" scope="session" />
																								
												</tbody>
											</table>
										</div>
									</div>
								</div>

		<!-- basic scripts -->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->


		<!-- page specific plugin scripts -->

		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.js"></script>


		<script type="text/javascript">
			jQuery(function($) {
				var oTable1 = $('#sample-table-2').dataTable( {
				"aoColumns": [
			      { "bSortable": false },
			      null, null,null, null, null,
				  { "bSortable": false }
				] } );
				
				
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
				});
			
			
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			})
		</script>								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!-- ace scripts -->

		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

</body>
</html>