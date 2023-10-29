<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
        			<h1 class="page-title">���������Է�<span>Shop</span></h1>
        		</div><!-- End .container -->
    </div><!-- End .page-header -->
    <br>
    
	<div class="page-content">
            	<div class="checkout">
	                <div class="container">
            			<form action="#">
		                	<div class="row">
		                		<div class="col-lg-9">
		                			<h4>���� ���� ����</h4><!-- End .checkout-title -->
                                    <hr>
		                				<div class="row">
		                					<div class="col-sm-6">
		                						<label>�޴� ��� *</label>
		                						<input type="text" class="form-control" required>
		                					</div><!-- End .col-sm-6 -->
		                				</div><!-- End .row -->

	            						<!-- <label>�ּ� *</label>
	            						<input type="text" class="form-control" placeholder="���θ�, �����ּ�" required>
	            						<input type="text" class="form-control" placeholder="���ּ�" required> -->
                                        
                                        <label>�ּ� *</label><br>
                                        <input type="button"  onclick="sample6_execDaumPostcode()" value="������ȣ ã��"><br><br>
                                        <input type="text" id="sample6_postcode" class="form-control col-sm-6" placeholder="������ȣ" readonly >

                                        <input type="text" class="form-control col-sm-6" id="sample6_address" placeholder="�ּ�" name="" style="margin-bottom: 0px; padding-bottom: 0px;" readonly><br>
                                        
                                        <label>���ּ� *</label>
                                        <input type="text" class="form-control col-sm-6" id="sample6_detailAddress" placeholder="���ּ�" name="">
                                        <input type="text" class="form-control col-sm-6" id="sample6_extraAddress" placeholder="�����׸�"><br>
                                        
		                				<label>�ڵ��� *</label>
		                				<input type="text" class="form-control col-sm-6" required>

	                					<label>�̸��� �ּ� *</label>
	        							<input type="email" class="form-control col-sm-6" required>

	                					<label>�ֹ� �޸� (���û���)</label>
	        							<textarea class="form-control" cols="30" rows="4" placeholder="�ֹ�/��ۿ� ���� ��������" style="resize: none;"></textarea>
		                		</div><!-- End .col-lg-9 -->
		                		<aside class="col-lg-3">
		                			<div class="summary">
		                				<h3 class="summary-title">�ֹ�����</h3><!-- End .summary-title -->

		                				<table class="table table-summary" style="width: 100%;">
		                					<thead>
		                						<tr>
		                							<th>��ǰ</th>
		                							<th id="tright">�ѱݾ�</th>
		                						</tr>
		                					</thead>

		                					<tbody>
		                						<tr>
		                							<td>��¦�� �Ź�, ������, 2��</td>
		                							<td id="tright">
                                                        <p style="font-size: 12px;">84,000*2</p>
                                                        168,000��
                                                    </td>
		                						</tr>

		                						<tr>
		                							<td>Blue utility pinafore denimdress</td>
		                							<td id="tright">76,000��</td>
		                						</tr>
                                                <tr>
                                                    <td>��� :</td>
                                                    <td id="tright">������</td>
                                                </tr>
                                                <tr class="summary-subtotal">
                                                    <td>�Ұ� :</td>
                                                    <td id="tright">244,000��</td>
                                                </tr><!-- End .summary-subtotal -->
                                                <tr>
                                                    <!-- input �ڽ� max���� ���� ����Ʈ �־���� -->
		                							<td>����Ʈ ��� : <input type="number" name="" min="100" max="500" style="width:90px; background-color: rgb(249, 249, 249); border: 1px solid lightgray;" placeholder="����Ʈ �Է�"><p style="font-size: 10px;margin-top: 5px;">(��������Ʈ : 2200��)</p></td>
		                							<td id="tright"> 2,000��</td>
		                						</tr><!-- End .summary-subtotal -->
		                						<tr class="summary-total">
		                							<td>�� �ݾ� :</td>
		                							<td id="tright">244,000��</td>
		                						</tr><!-- End .summary-total -->
		                					</tbody>
		                				</table><!-- End .table table-summary -->

		                				<button type="submit" id="kaobtn" class="btn btn-outline-primary-2 btn-order btn-block">
		                					<span class="btn-text">�ֹ��ϱ�</span>
		                					<span class="btn-hover-text">�ֹ��ϱ�</span>
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
            				item_name:"������ 14 pro",
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
			                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
			
			                // �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
			                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
			                var addr = ''; // �ּ� ����
			                var extraAddr = ''; // �����׸� ����
			
			                //����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
			                if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
			                    addr = data.roadAddress;
			                } else { // ����ڰ� ���� �ּҸ� �������� ���(J)
			                    addr = data.jibunAddress;
			                }
			
			                // ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����׸��� �����Ѵ�.
			                if(data.userSelectedType === 'R'){
			                    // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
			                    // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
			                    if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
			                        extraAddr += data.bname;
			                    }
			                    // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
			                    if(data.buildingName !== '' && data.apartment === 'Y'){
			                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			                    }
			                    // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
			                    if(extraAddr !== ''){
			                        extraAddr = ' (' + extraAddr + ')';
			                    }
			                    // ���յ� �����׸��� �ش� �ʵ忡 �ִ´�.
			                    document.getElementById("sample6_extraAddress").value = extraAddr;
			                
			                } else {
			                    document.getElementById("sample6_extraAddress").value = '';
			                }
			
			                // ������ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
			                document.getElementById('sample6_postcode').value = data.zonecode;
			                document.getElementById("sample6_address").value = addr;
			                // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
			                document.getElementById("sample6_detailAddress").focus();
			            }
			        }).open();
			    }
			</script>
            
            
            <jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>