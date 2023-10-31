<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>

	<jsp:include page="../common/header.jsp"></jsp:include>

	<div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
        		<div class="container">
        			<h1 class="page-title">占쏙옙占쏙옙占쏙옙占쏙옙占쌉뤄옙<span>Shop</span></h1>
        		</div><!-- End .container -->
    </div><!-- End .page-header -->
    <br>
    
	<div class="page-content">
            	<div class="checkout">
	                <div class="container">
            			<form action="#">
		                	<div class="row">
		                		<div class="col-lg-9">
		                			<h4>占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙</h4><!-- End .checkout-title -->
                                    <hr>
		                				<div class="row">
		                					<div class="col-sm-6">
		                						<label>占쌨댐옙 占쏙옙占� *</label>
		                						<input type="text" class="form-control" required>
		                					</div><!-- End .col-sm-6 -->
		                				</div><!-- End .row -->

	            						<!-- <label>占쌍쇽옙 *</label>
	            						<input type="text" class="form-control" placeholder="占쏙옙占싸몌옙, 占쏙옙占쏙옙占쌍쇽옙" required>
	            						<input type="text" class="form-control" placeholder="占쏙옙占쌍쇽옙" required> -->
                                        
                                        <label>占쌍쇽옙 *</label><br>
                                        <input type="button"  onclick="sample6_execDaumPostcode()" value="占쏙옙占쏙옙占쏙옙호 찾占쏙옙"><br><br>
                                        <input type="text" id="sample6_postcode" class="form-control col-sm-6" placeholder="占쏙옙占쏙옙占쏙옙호" readonly >

                                        <input type="text" class="form-control col-sm-6" id="sample6_address" placeholder="占쌍쇽옙" name="" style="margin-bottom: 0px; padding-bottom: 0px;" readonly><br>
                                        
                                        <label>占쏙옙占쌍쇽옙 *</label>
                                        <input type="text" class="form-control col-sm-6" id="sample6_detailAddress" placeholder="占쏙옙占쌍쇽옙" name="">
                                        <input type="text" class="form-control col-sm-6" id="sample6_extraAddress" placeholder="占쏙옙占쏙옙占쌓몌옙"><br>
                                        
		                				<label>占쌘듸옙占쏙옙 *</label>
		                				<input type="text" class="form-control col-sm-6" required>

	                					<label>占싱몌옙占쏙옙 占쌍쇽옙 *</label>
	        							<input type="email" class="form-control col-sm-6" required>

	                					<label>占쌍뱄옙 占쌨몌옙 (占쏙옙占시삼옙占쏙옙)</label>
	        							<textarea class="form-control" cols="30" rows="4" placeholder="占쌍뱄옙/占쏙옙謗占� 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙" style="resize: none;"></textarea>
		                		</div><!-- End .col-lg-9 -->
		                		<aside class="col-lg-3">
		                			<div class="summary">
		                				<h3 class="summary-title">占쌍뱄옙占쏙옙占쏙옙</h3><!-- End .summary-title -->

		                				<table class="table table-summary" style="width: 100%;">
		                					<thead>
		                						<tr>
		                							<th>占쏙옙품</th>
		                							<th id="tright">占싼금억옙</th>
		                						</tr>
		                					</thead>

		                					<tbody>
		                						<tr>
		                							<td>占쏙옙짝占쏙옙 占신뱄옙, 占쏙옙占쏙옙占쏙옙, 2占쏙옙</td>
		                							<td id="tright">
                                                        <p style="font-size: 12px;">84,000*2</p>
                                                        168,000占쏙옙
                                                    </td>
		                						</tr>

		                						<tr>
		                							<td>Blue utility pinafore denimdress</td>
		                							<td id="tright">76,000占쏙옙</td>
		                						</tr>
                                                <tr>
                                                    <td>占쏙옙占� :</td>
                                                    <td id="tright">占쏙옙占쏙옙占쏙옙</td>
                                                </tr>
                                                <tr class="summary-subtotal">
                                                    <td>占쌀곤옙 :</td>
                                                    <td id="tright">244,000占쏙옙</td>
                                                </tr><!-- End .summary-subtotal -->
                                                <tr>
                                                    <!-- input 占쌘쏙옙 max占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙트 占쌍억옙占쏙옙占� -->
		                							<td>占쏙옙占쏙옙트 占쏙옙占� : <input type="number" name="" min="100" max="500" style="width:90px; background-color: rgb(249, 249, 249); border: 1px solid lightgray;" placeholder="占쏙옙占쏙옙트 占쌉뤄옙"><p style="font-size: 10px;margin-top: 5px;">(占쏙옙占쏙옙占쏙옙占쏙옙트 : 2200占쏙옙)</p></td>
		                							<td id="tright"> 2,000占쏙옙</td>
		                						</tr><!-- End .summary-subtotal -->
		                						<tr class="summary-total">
		                							<td>占쏙옙 占쌥억옙 :</td>
		                							<td id="tright">244,000占쏙옙</td>
		                						</tr><!-- End .summary-total -->
		                					</tbody>
		                				</table><!-- End .table table-summary -->

		                				<button type="submit" id="kaobtn" class="btn btn-outline-primary-2 btn-order btn-block">
		                					<span class="btn-text">占쌍뱄옙占싹깍옙</span>
		                					<span class="btn-hover-text">占쌍뱄옙占싹깍옙</span>
		                				</button>
		                			</div><!-- End .summary -->
		                		</aside><!-- End .col-lg-3 -->
		                	</div><!-- End .row -->
            			</form>
	                </div><!-- End .container -->
                </div><!-- End .checkout -->
            </div><!-- End .page-content -->
            
            <script>
            	$("#kaobtn").click(function(){
            		$.ajax({
            			type:'get',
            			url:'/pay/read',
            			data:{
            				item_name:"占쏙옙占쏙옙占쏙옙 14 pro",
            				quantity:"1",
            				total_amount:"1400000",
            				tax_free_amount:"0"
            			},
            			success:function(res){
            				location.href=res.next_redirect_moblie_url;
            			}
            		})
            	})
            </script>
            
            <script>
			    function sample6_execDaumPostcode() {
			        new daum.Postcode({
			            oncomplete: function(data) {
			                // 占싯억옙占쏙옙占쏙옙 占싯삼옙占쏙옙占� 占쌓몌옙占쏙옙 클占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쌘드를 占쌜쇽옙占싹댐옙 占싸븝옙.
			
			                // 占쏙옙 占쌍쇽옙占쏙옙 占쏙옙占쏙옙 占쏙옙칙占쏙옙 占쏙옙占쏙옙 占쌍소몌옙 占쏙옙占쏙옙占싼댐옙.
			                // 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙荑� 占쏙옙占쏙옙('')占쏙옙占쏙옙 占쏙옙占쏙옙占실뤄옙, 占싱몌옙 占쏙옙占쏙옙占싹울옙 占싻깍옙 占싼댐옙.
			                var addr = ''; // 占쌍쇽옙 占쏙옙占쏙옙
			                var extraAddr = ''; // 占쏙옙占쏙옙占쌓몌옙 占쏙옙占쏙옙
			
			                //占쏙옙占쏙옙微占� 占쏙옙占쏙옙占쏙옙 占쌍쇽옙 타占쌉울옙 占쏙옙占쏙옙 占쌔댐옙 占쌍쇽옙 占쏙옙占쏙옙 占쏙옙占쏙옙占승댐옙.
			                if (data.userSelectedType === 'R') { // 占쏙옙占쏙옙微占� 占쏙옙占싸몌옙 占쌍소몌옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占�
			                    addr = data.roadAddress;
			                } else { // 占쏙옙占쏙옙微占� 占쏙옙占쏙옙 占쌍소몌옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占�(J)
			                    addr = data.jibunAddress;
			                }
			
			                // 占쏙옙占쏙옙微占� 占쏙옙占쏙옙占쏙옙 占쌍소곤옙 占쏙옙占싸몌옙 타占쏙옙占싹띰옙 占쏙옙占쏙옙占쌓몌옙占쏙옙 占쏙옙占쏙옙占싼댐옙.
			                if(data.userSelectedType === 'R'){
			                    // 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占� 占쌩곤옙占싼댐옙. (占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙)
			                    // 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占� 占쏙옙占쏙옙占쏙옙 占쏙옙占쌘곤옙 "占쏙옙/占쏙옙/占쏙옙"占쏙옙 占쏙옙占쏙옙占쏙옙.
			                    if(data.bname !== '' && /[占쏙옙|占쏙옙|占쏙옙]$/g.test(data.bname)){
			                        extraAddr += data.bname;
			                    }
			                    // 占실뱄옙占쏙옙占쏙옙 占쌍곤옙, 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占� 占쌩곤옙占싼댐옙.
			                    if(data.buildingName !== '' && data.apartment === 'Y'){
			                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			                    }
			                    // 표占쏙옙占쏙옙 占쏙옙占쏙옙占쌓몌옙占쏙옙 占쏙옙占쏙옙 占쏙옙占�, 占쏙옙호占쏙옙占쏙옙 占쌩곤옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쌘울옙占쏙옙 占쏙옙占쏙옙占�.
			                    if(extraAddr !== ''){
			                        extraAddr = ' (' + extraAddr + ')';
			                    }
			                    // 占쏙옙占쌌듸옙 占쏙옙占쏙옙占쌓몌옙占쏙옙 占쌔댐옙 占십드에 占쌍는댐옙.
			                    document.getElementById("sample6_extraAddress").value = extraAddr;
			                
			                } else {
			                    document.getElementById("sample6_extraAddress").value = '';
			                }
			
			                // 占쏙옙占쏙옙占쏙옙호占쏙옙 占쌍쇽옙 占쏙옙占쏙옙占쏙옙 占쌔댐옙 占십드에 占쌍는댐옙.
			                document.getElementById('sample6_postcode').value = data.zonecode;
			                document.getElementById("sample6_address").value = addr;
			                // 커占쏙옙占쏙옙 占쏙옙占쌍쇽옙 占십듸옙占� 占싱듸옙占싼댐옙.
			                document.getElementById("sample6_detailAddress").focus();
			            }
			        }).open();
			    }
			</script>
            
            
            <jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>