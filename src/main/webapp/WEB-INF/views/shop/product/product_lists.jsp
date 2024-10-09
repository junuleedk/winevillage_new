<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="java.util.List" %>
<%@page import="java.util.Collections"%>
<%@page import="java.util.stream.Collectors"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%
	String category = (String) request.getAttribute("category");

	//Get List<Integer> from request attributes
	List<Integer> categoryTypeList = (List<Integer>) request.getAttribute("category_type");
	List<Integer> categoryCountryList = (List<Integer>) request.getAttribute("category_country");

	// Convert List<Integer> to List<String>
	List<String> categoryTypeStringList = categoryTypeList != null
		? categoryTypeList.stream().map(String::valueOf).collect(Collectors.toList())
		: Collections.emptyList();
	List<String> categoryCountryStringList = categoryCountryList != null
		? categoryCountryList.stream().map(String::valueOf).collect(Collectors.toList())
		: Collections.emptyList();

	// Convert List<String> to String
	String category_type = String.join(",", categoryTypeStringList);
	String category_country = String.join(",", categoryCountryStringList);

	String page_title = "";

	// WINE and subcategories
	if ("10000".equals(category) && "".equals(category_type) && "".equals(category_country)) {
		page_title = "WINE";
	} else if ("10101".equals(category_type)) {
		page_title = "RED";
	} else if ("10102".equals(category_type)) {
		page_title = "WHITE";
	} else if ("10103".equals(category_type)) {
		page_title = "SPARKLING";
	} else if ("10104".equals(category_type)) {
		page_title = "DESSERT";
	} else if ("10105".equals(category_type)) {
		page_title = "FORTIFIED";
	} else if ("10108".equals(category_type)) {
		page_title = "ROSE";
	} 
	// Countries
	else if ("10201".equals(category_country)) {
		page_title = "프랑스";
	} else if ("10202".equals(category_country)) {
		page_title = "이탈리아";
	} else if ("10203".equals(category_country)) {
		page_title = "스페인";
	} else if ("10204".equals(category_country)) {
		page_title = "독일";
	} else if ("10205".equals(category_country)) {
		page_title = "칠레";
	} else if ("10206".equals(category_country)) {
		page_title = "미국";
	} else if ("10207".equals(category_country)) {
		page_title = "호주";
	} else if ("10208".equals(category_country)) {
		page_title = "뉴질랜드";
	} else if ("10209".equals(category_country)) {
		page_title = "아르헨티나";
	} else if ("10210".equals(category_country)) {
		page_title = "기타 구대륙";
	} else if ("10211".equals(category_country)) {
		page_title = "기타 신대륙";
	} else if ("10213".equals(category_country)) {
		page_title = "포르투갈";
	}
	// BEER&LIQUOR and subcategories
	else if ("20000".equals(category) && "".equals(category_type)) {
		page_title = "BEER&LIQUOR";
	} else if ("20101".equals(category_type)) {
		page_title = "위스키";
	} else if ("20102".equals(category_type)) {
		page_title = "꼬냑";
	} else if ("20103".equals(category_type)) {
		page_title = "진";
	} else if ("20105".equals(category_type)) {
		page_title = "데킬라";
	} else if ("20106".equals(category_type)) {
		page_title = "럼";
	} else if ("20201".equals(category_type)) {
		page_title = "맥주";
	}
	// OTHER and TICKET
	else if ("40000".equals(category)) {
		page_title = "OTHER";
	} else if ("50000".equals(category)) {
		page_title = "TICKET";
	} else {
		page_title = "PAGE_TITLE";
	}
%>
<title>WINEVILLAGE 2024 ㅣ <%= page_title %></title>
<%@ include file="../common/common.jsp" %>
</head>
<body>
<!-- skip_menu -->
<div class="skip_menu" id="skip_menu">
	<ul>
		<li><a href="#header">메인메뉴 바로가기</a></li>
		<li><a href="#contents">본문 바로가기</a></li>
		<li><a href="#footer">하단메뉴 바로가기</a></li>
	</ul>
</div>
<!-- //skip_menu -->

<sec:authorize access="!isAuthenticated()">
<!-- header -->
<%@ include file="../common/header.jsp" %>
<!-- //header -->
</sec:authorize>
<sec:authorize access="isAuthenticated()">
<!-- header - 로그인 상태 -->
<%@ include file="../common/header_loggedin.jsp" %>
<!-- //header - 로그인 상태 -->
</sec:authorize>
<%@ include file="../common/layer.jsp" %>
<%@ include file="../common/script.jsp" %>

<!-- contents -->
<section id="contents" style="margin-top: 188px;">
	<div class="lnb product_lnb lnb_wrap">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand" id="select_brand">
				<h2 class="my_value js_selectBtn">PAGE_TITLE</h2>
			</div>
		</div>
	</div>
	<div class="wrap">
		<div class="content product product_lists_page test">
			<%@ include file="product_lists/product_lists_wrap.jsp" %>
			<%-- <div class="product_lists_wrap">
				<%@ include file="product_lists/prd_list_tit.jsp" %>
				<!-- 필터 -->
				<%@ include file="product_lists/prd_smartsearch.jsp" %>
				<!-- 필터 -->
				<%@ include file="product_lists/prd_list_area.jsp" %>
				<%@ include file="product_lists/pagination.jsp" %>
			</div> --%>
		</div>
	</div>
	<%@ include file="product_lists/listFrm.jsp" %>
	<link rel="stylesheet" type="text/css" href="<c:url value='/asset/css/shop/slick.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/asset/css/shop/jqcloud.min.css' />">
	<script type="text/javascript" src="<c:url value='/asset/js/jqcloud.min.js' />"></script>
	<script type="text/javascript" src="<c:url value='/asset/js/slick.min.js' />"></script>
	<!-- http://mistic100.github.io/jQCloud/demo.html -->
	<script>
		$(function(){
			//$(".pagination > a:first-child, .pagination > a:last-child").css("display", "none");	// << >> 미노출
			var state = '${classified}';
			if(state == "exclusive"){	// 매장문의(2022-11-28 soldout랑 통합)
				$("#cate_txt").text("EXCLUSIVE");
			} else if(state == "all"){
				$("#cate_txt").text("ALL");
			} else if(state == "") {
				$("#cate_txt").text("ALL");
			} else{
				$("#cate_txt").text("VALUE");
			}
			filter_submit();
		});
		function number_format(num){
			return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g,',');
		}
		var total_list = '';
		var listFormData = '';
		if(location.hash){
			var current_location_href = window.location.href;
		}else{
			var current_location_href = window.location.href +'##';
		}
		// 상태탭
		function state_list(state){
			var form = document.listFrm;
			$("#classified").val(state);
			if(state == "exclusive"){	// 매장문의(2022-11-28 soldout랑 통합)
				$("#cate_txt").text("EXCLUSIVE");
			}else if(state == "value"){
				$("#cate_txt").text("VALUE");
			}else{
				$("#cate_txt").text("ALL");
			}
			
			// 폼에서 값이 없는 항목을 제거한 후 제출
		    $(form).find('input[type="hidden"]').each(function() {
		        if (!$(this).val()) {
		            $(this).remove();  // 빈 값을 가진 input 요소 제거
		        }
		    });
			
			form.submit();
		};
		// 갯수
		$(".rcd_cnt").on("click", function(){
			var form = document.listFrm;
			var val = $(this).val();
			$("#list_count").val(val);
			setCookie("row_count_cookie",val, 30);
			
			// 폼에서 값이 없는 항목을 제거한 후 제출
		    $(form).find('input[type="hidden"]').each(function() {
		        if (!$(this).val()) {
		            $(this).remove();  // 빈 값을 가진 input 요소 제거
		        }
		    });
			
			form.submit();
		});
		// 정렬
		$("#js_select").change(function(){
			var form = document.listFrm;
			var val = $(this).val();
			$("#sort").val(val);
			setCookie("list_order_cookie", val, 30);
			
			// 폼에서 값이 없는 항목을 제거한 후 제출
		    $(form).find('input[type="hidden"]').each(function() {
		        if (!$(this).val()) {
		            $(this).remove();  // 빈 값을 가진 input 요소 제거
		        }
		    });
			
			form.submit();
		});
		function setCookie(cname, cvalue, exdays) {
			var d = new Date();
			d.setTime(d.getTime() + (exdays*24*60*60*1000)); //시간설정
			var expires = "expires="+d.toUTCString(); var temp = cname + "=" + cvalue + "; " + expires;
			document.cookie = temp;
		}
		/************************ 필터 ************************/
		$(function() {
			$("#info_ul li").first().addClass("on");	// 대분류 처음꺼
			$(".js_tabCon").first().addClass("on");	// 중분류 처음꺼

			// 서버 측에서 받은 category_type 값을 배열로 변환
		    const categoryTypeArray = ${category_type} || []; // 빈 배열로 초기화
			const categoryCountryArray = ${category_country} || []; // 빈 배열로 초기화
			const labelStateArray = ${label_state} || []; // 빈 배열로 초기화
			const priceRange = "${price_range}"; // 문자열로 호출
			const labelGrapevarietyString = "${label_grapevariety}"; // 문자열로 호출
			const labelGrapevarietyDecode = decodeURIComponent(labelGrapevarietyString); // 문자열이 URL인코딩 되어 있으면 디코딩
			const labelGrapevarietyClean = labelGrapevarietyDecode.replace(/[\[\]']+/g, '').replace(/,\s+/g, ','); // 대괄호 제거
			const labelGrapevarietyArray = labelGrapevarietyClean ? labelGrapevarietyClean.split(',') : []; // 쉼표로 구분된 배열로 변환

		    // categoryTypeArray에 따라 input[name='item_seq']를 체크
		    categoryTypeArray.forEach(function(type) {
		    	// Ensure type is a string for comparison
		    	if (String(type) === "10101") {
		    		$("input[name='item_seq'][value='29']").prop("checked", true);
		    	} else if (String(type) === "10102") {
		    		$("input[name='item_seq'][value='28']").prop("checked", true);
		    	} else if (String(type) === "10103") {
		    		$("input[name='item_seq'][value='27']").prop("checked", true);
		    	} else if (String(type) === "10104") {
		    		$("input[name='item_seq'][value='26']").prop("checked", true);
		    	} else if (String(type) === "10108") {
		    		$("input[name='item_seq'][value='25']").prop("checked", true);
		    	} else if (String(type) === "10105") {
		    		$("input[name='item_seq'][value='100']").prop("checked", true);
		    	}
		    });
			
			// priceRange에 따라 input[name='item_seq']를 체크
			switch (String(priceRange)) {
				case "~30000":
					$("input[name='item_seq'][value='35']").prop("checked", true);
					break;
				case "30000~60000":
					$("input[name='item_seq'][value='36']").prop("checked", true);
					break;
				case "60000~100000":
					$("input[name='item_seq'][value='66']").prop("checked", true);
					break;
				case "100000~":
					$("input[name='item_seq'][value='67']").prop("checked", true);
					break;
				default:
					break;
			}

		    // categoryCountryArray에 따라 input[name='item_seq']를 체크
		    categoryCountryArray.forEach(function(country) {
		    	// Ensure country is a string for comparison
		    	if (String(country) === "10201") {
		    		$("input[name='item_seq'][value='75']").prop("checked", true);
		    	} else if (String(country) === "10202") {
		    		$("input[name='item_seq'][value='76']").prop("checked", true);
		    	} else if (String(country) === "10203") {
		    		$("input[name='item_seq'][value='77']").prop("checked", true);
		    	} else if (String(country) === "10206") {
		    		$("input[name='item_seq'][value='80']").prop("checked", true);
		    	} else if (String(country) === "10204") {
		    		$("input[name='item_seq'][value='78']").prop("checked", true);
		    	} else if (String(country) === "10205") {
		    		$("input[name='item_seq'][value='79']").prop("checked", true);
		    	} else if (String(country) === "10209") {
		    		$("input[name='item_seq'][value='83']").prop("checked", true);
		    	} else if (String(country) === "10207") {
		    		$("input[name='item_seq'][value='81']").prop("checked", true);
		    	} else if (String(country) === "10208") {
		    		$("input[name='item_seq'][value='82']").prop("checked", true);
		    	} else if (String(country) === "10213") {
		    		$("input[name='item_seq'][value='103']").prop("checked", true);
		    	} else if (String(country) === "10210") {
		    		$("input[name='item_seq'][value='114']").prop("checked", true);
		    	} else if (String(country) === "10211") {
		    		$("input[name='item_seq'][value='115']").prop("checked", true);
		    	}
		    });
		    
		    // labelStateArray에 따라 input[name='item_seq']를 체크
		    labelStateArray.forEach(function(state) {
		    	// Ensure country is a string for comparison
		    	if (String(state) === "198") {
					$("input[name='item_seq'][value='198']").prop("checked", true);
				} else if (String(state) === "199") {
					$("input[name='item_seq'][value='199']").prop("checked", true);
				} else if (String(state) === "71") {
					$("input[name='item_seq'][value='71']").prop("checked", true);
				} else if (String(state) === "177") {
					$("input[name='item_seq'][value='177']").prop("checked", true);
				} else if (String(state) === "202") {
					$("input[name='item_seq'][value='202']").prop("checked", true);
				} else if (String(state) === "72") {
					$("input[name='item_seq'][value='72']").prop("checked", true);
				} else if (String(state) === "203") {
					$("input[name='item_seq'][value='203']").prop("checked", true);
				} else if (String(state) === "204") {
					$("input[name='item_seq'][value='204']").prop("checked", true);
				} else if (String(state) === "205") {
					$("input[name='item_seq'][value='205']").prop("checked", true);
				} else if (String(state) === "206") {
					$("input[name='item_seq'][value='206']").prop("checked", true);
				} else if (String(state) === "207") {
					$("input[name='item_seq'][value='207']").prop("checked", true);
				} else if (String(state) === "208") {
					$("input[name='item_seq'][value='208']").prop("checked", true);
				} else if (String(state) === "209") {
					$("input[name='item_seq'][value='209']").prop("checked", true);
				} else if (String(state) === "180") {
					$("input[name='item_seq'][value='180']").prop("checked", true);
				} else if (String(state) === "210") {
					$("input[name='item_seq'][value='210']").prop("checked", true);
				} else if (String(state) === "211") {
					$("input[name='item_seq'][value='211']").prop("checked", true);
				} else if (String(state) === "212") {
					$("input[name='item_seq'][value='212']").prop("checked", true);
				} else if (String(state) === "213") {
					$("input[name='item_seq'][value='213']").prop("checked", true);
				} else if (String(state) === "74") {
					$("input[name='item_seq'][value='74']").prop("checked", true);
				} else if (String(state) === "214") {
					$("input[name='item_seq'][value='214']").prop("checked", true);
				} else if (String(state) === "215") {
					$("input[name='item_seq'][value='215']").prop("checked", true);
				} else if (String(state) === "73") {
					$("input[name='item_seq'][value='73']").prop("checked", true);
				} else if (String(state) === "216") {
					$("input[name='item_seq'][value='216']").prop("checked", true);
				} else if (String(state) === "217") {
					$("input[name='item_seq'][value='217']").prop("checked", true);
				} else if (String(state) === "218") {
					$("input[name='item_seq'][value='218']").prop("checked", true);
				} else if (String(state) === "178") {
					$("input[name='item_seq'][value='178']").prop("checked", true);
				} else if (String(state) === "219") {
					$("input[name='item_seq'][value='219']").prop("checked", true);
				} else if (String(state) === "220") {
					$("input[name='item_seq'][value='220']").prop("checked", true);
				} else if (String(state) === "221") {
					$("input[name='item_seq'][value='221']").prop("checked", true);
				} else if (String(state) === "222") {
					$("input[name='item_seq'][value='222']").prop("checked", true);
				} else if (String(state) === "223") {
					$("input[name='item_seq'][value='223']").prop("checked", true);
				} else if (String(state) === "230") {
					$("input[name='item_seq'][value='230']").prop("checked", true);
				}
		    });
		    
			// labelGrapevarietyArray에 따라 input[name='item_seq']를 체크
		    labelGrapevarietyArray.forEach(function(country) {
		    	// Ensure country is a string for comparison
		    	if (String(country) === "카베르네 소비뇽") {
		    		$("input[name='item_seq'][value='37']").prop("checked", true);
		    	} else if (String(country) === "쉬라즈") {
		    		$("input[name='item_seq'][value='157']").prop("checked", true);
		    	} else if (String(country) === "메를로") {
		    		$("input[name='item_seq'][value='38']").prop("checked", true);
		    	} else if (String(country) === "카베르네 프랑") {
		    		$("input[name='item_seq'][value='92']").prop("checked", true);
		    	} else if (String(country) === "템프라니요") {
		    		$("input[name='item_seq'][value='90']").prop("checked", true);
		    	} else if (String(country) === "피노 누아") {
		    		$("input[name='item_seq'][value='87']").prop("checked", true);
		    	} else if (String(country) === "말벡") {
		    		$("input[name='item_seq'][value='88']").prop("checked", true);
		    	} else if (String(country) === "진판델") {
		    		$("input[name='item_seq'][value='168']").prop("checked", true);
		    	} else if (String(country) === "산지오베제") {
		    		$("input[name='item_seq'][value='89']").prop("checked", true);
		    	} else if (String(country) === "가메") {
		    		$("input[name='item_seq'][value='164']").prop("checked", true);
		    	} else if (String(country) === "네비올로") {
		    		$("input[name='item_seq'][value='167']").prop("checked", true);
		    	} else if (String(country) === "카르메네르") {
		    		$("input[name='item_seq'][value='156']").prop("checked", true);
		    	} else if (String(country) === "그르나슈") {
		    		$("input[name='item_seq'][value='91']").prop("checked", true);
		    	} else if (String(country) === "몬테풀치아") {
		    		$("input[name='item_seq'][value='231']").prop("checked", true);
		    	} else if (String(country) === "바르베라") {
		    		$("input[name='item_seq'][value='232']").prop("checked", true);
		    	} else if (String(country) === "샤르도네") {
		    		$("input[name='item_seq'][value='171']").prop("checked", true);
		    	} else if (String(country) === "세미용") {
		    		$("input[name='item_seq'][value='161']").prop("checked", true);
		    	} else if (String(country) === "소비뇽 블랑") {
		    		$("input[name='item_seq'][value='159']").prop("checked", true);
		    	} else if (String(country) === "리슬링") {
		    		$("input[name='item_seq'][value='160']").prop("checked", true);
		    	} else if (String(country) === "슈냉 블랑") {
		    		$("input[name='item_seq'][value='224']").prop("checked", true);
		    	} else if (String(country) === "모스카토") {
		    		$("input[name='item_seq'][value='225']").prop("checked", true);
		    	} else if (String(country) === "피노그리") {
		    		$("input[name='item_seq'][value='166']").prop("checked", true);
		    	} else if (String(country) === "비오니에") {
		    		$("input[name='item_seq'][value='226']").prop("checked", true);
		    	} else if (String(country) === "게뷔르츠트라미너") {
		    		$("input[name='item_seq'][value='163']").prop("checked", true);
		    	} else if (String(country) === "그뤼너 펠트리너") {
		    		$("input[name='item_seq'][value='227']").prop("checked", true);
		    	} else if (String(country) === "베르데호") {
		    		$("input[name='item_seq'][value='162']").prop("checked", true);
		    	} else if (String(country) === "알리고떼") {
		    		$("input[name='item_seq'][value='228']").prop("checked", true);
		    	} else if (String(country) === "기타") {
		    		$("input[name='item_seq'][value='174']").prop("checked", true);
		    	}
		    });
			
			document.getElementById('category_type').value = categoryTypeArray.join(',');
			document.getElementById('category_country').value = categoryCountryArray.join(',');
			document.getElementById('label_state').value = labelStateArray.join(',');
			document.getElementById('label_grapevariety').value = labelGrapevarietyArray.join(',');
		});
		function filter_submit(){
			var seq = '';
			var html = '';
			$(".filter_item").empty();	// 클릭마다 초기화
			$("#page").val(1);
			var categoryTypes = [];
			var categoryCountries = [];
			var labelStates = [];
			var labelGrapevarieties = [];
			$("input[name='item_seq']:checked").each(function() {
				// console.log($(this).data('nm'));
				var id = $(this).prop('id');
				
				if(seq == ""){
					seq = String($(this).val());
				}else{
					seq = String($(this).val())+","+seq;
				}
				html += '<div class="check_select item_chk" id="filter_btn_'+$(this).val()+'" onclick="DelFilterEvent('+$(this).val()+');">';
				html +=		$(this).data('nm');
				html +=		'<button type="button" class="del" name="del_btn" value="'+$(this).val()+'" onclick="DelFilterEvent('+$(this).val()+');">삭제</button>';
				html += '</div>';
				
				if(document.getElementById('category_type').value == "50000") {
					document.getElementById('category_type').value == null;
				}
				
				var mappedValue;
			    if (["type_check_29", "type_check_28", "type_check_27", "type_check_26", "type_check_25", "type_check_100"].includes(id)) {
			        if (id === "type_check_29") {
			            mappedValue = "10101";
			        } else if (id === "type_check_28") {
			            mappedValue = "10102";
			        } else if (id === "type_check_27") {
			            mappedValue = "10103";
			        } else if (id === "type_check_26") {
			            mappedValue = "10104";
			        } else if (id === "type_check_25") {
			            mappedValue = "10108";
			        } else if (id === "type_check_100") {
			            mappedValue = "10105";
			        }
			        categoryTypes.push(mappedValue);
			    }
			    else if (["type_check_75", "type_check_76", "type_check_77",
			    	"type_check_80", "type_check_78", "type_check_79",
			    	"type_check_83", "type_check_81", "type_check_82",
			    	"type_check_103", "type_check_114", "type_check_115",
			    	].includes(id)) {
			        if (id === "type_check_75") {
			            mappedValue = "10201";
			        } else if (id === "type_check_76") {
			            mappedValue = "10202";
			        } else if (id === "type_check_77") {
			            mappedValue = "10203";
			        } else if (id === "type_check_80") {
			            mappedValue = "10206";
			        } else if (id === "type_check_78") {
			            mappedValue = "10204";
			        } else if (id === "type_check_79") {
			            mappedValue = "10205";
			        } else if (id === "type_check_83") {
			            mappedValue = "10209";
			        } else if (id === "type_check_81") {
			            mappedValue = "10207";
			        } else if (id === "type_check_82") {
			            mappedValue = "10208";
			        } else if (id === "type_check_103") {
			            mappedValue = "10213";
			        } else if (id === "type_check_114") {
			            mappedValue = "10210";
			        } else if (id === "type_check_115") {
			            mappedValue = "10211";
			        }
			        categoryCountries.push(mappedValue);
			    }
				else if (["type_check_198", "type_check_199", "type_check_71",
					"type_check_177", "type_check_202", "type_check_72",
					"type_check_203", "type_check_204", "type_check_205",
					"type_check_206", "type_check_207", "type_check_208",
					"type_check_209", "type_check_180", "type_check_210",
					"type_check_211", "type_check_212", "type_check_213",
					"type_check_74", "type_check_214", "type_check_215",
					"type_check_73", "type_check_216", "type_check_217",
					"type_check_218", "type_check_178", "type_check_219",
					"type_check_220", "type_check_221", "type_check_222",
					"type_check_223", "type_check_230"
			         ].includes(id)) {
					if (id === "type_check_198") {
						mappedValue = "198";
					} else if (id === "type_check_199") {
						mappedValue = "199";
					} else if (id === "type_check_71") {
						mappedValue = "71";
					} else if (id === "type_check_177") {
						mappedValue = "177";
					} else if (id === "type_check_202") {
						mappedValue = "202";
					} else if (id === "type_check_72") {
						mappedValue = "72";
					} else if (id === "type_check_203") {
						mappedValue = "203";
					} else if (id === "type_check_204") {
						mappedValue = "204";
					} else if (id === "type_check_205") {
						mappedValue = "205";
					} else if (id === "type_check_206") {
						mappedValue = "206";
					} else if (id === "type_check_207") {
						mappedValue = "207";
					} else if (id === "type_check_208") {
						mappedValue = "208";
					} else if (id === "type_check_209") {
						mappedValue = "209";
					} else if (id === "type_check_180") {
						mappedValue = "180";
					} else if (id === "type_check_210") {
						mappedValue = "210";
					} else if (id === "type_check_211") {
						mappedValue = "211";
					} else if (id === "type_check_212") {
						mappedValue = "212";
					} else if (id === "type_check_213") {
						mappedValue = "213";
					} else if (id === "type_check_74") {
						mappedValue = "74";
					} else if (id === "type_check_214") {
						mappedValue = "214";
					} else if (id === "type_check_215") {
						mappedValue = "215";
					} else if (id === "type_check_73") {
						mappedValue = "73";
					} else if (id === "type_check_216") {
						mappedValue = "216";
					} else if (id === "type_check_217") {
						mappedValue = "217";
					} else if (id === "type_check_218") {
						mappedValue = "218";
					} else if (id === "type_check_178") {
						mappedValue = "178";
					} else if (id === "type_check_219") {
						mappedValue = "219";
					} else if (id === "type_check_220") {
						mappedValue = "220";
					} else if (id === "type_check_221") {
						mappedValue = "221";
					} else if (id === "type_check_222") {
						mappedValue = "222";
					} else if (id === "type_check_223") {
						mappedValue = "223";
					} else if (id === "type_check_230") {
						mappedValue = "230";
					}
			        labelStates.push(mappedValue);
				} else if (["type_check_37", "type_check_157", "type_check_38",
					"type_check_92", "type_check_90", "type_check_87", "type_check_88",
					"type_check_168", "type_check_89", "type_check_164", "type_check_167",
					"type_check_156", "type_check_91", "type_check_231", "type_check_232",
					"type_check_171", "type_check_161", "type_check_159", "type_check_160",
					"type_check_224", "type_check_225", "type_check_166", "type_check_226",
					"type_check_163", "type_check_227", "type_check_162", "type_check_228",
					"type_check_174"].includes(id)) {
					if (id === "type_check_37") {
						mappedValue = "카베르네 소비뇽";
					} else if (id === "type_check_157") {
						mappedValue = "쉬라즈";
					} else if (id === "type_check_38") {
						mappedValue = "메를로";
					} else if (id === "type_check_92") {
						mappedValue = "카베르네 프랑";
					} else if (id === "type_check_90") {
						mappedValue = "템프라니요";
					} else if (id === "type_check_87") {
						mappedValue = "피노 누아";
					} else if (id === "type_check_88") {
						mappedValue = "말벡";
					} else if (id === "type_check_168") {
						mappedValue = "진판델";
					} else if (id === "type_check_89") {
						mappedValue = "산지오베제";
					} else if (id === "type_check_164") {
						mappedValue = "가메";
					} else if (id === "type_check_167") {
						mappedValue = "네비올로";
					} else if (id === "type_check_156") {
						mappedValue = "카르메네르";
					} else if (id === "type_check_91") {
						mappedValue = "그르나슈";
					} else if (id === "type_check_231") {
						mappedValue = "몬테풀치아";
					} else if (id === "type_check_232") {
						mappedValue = "바르베라";
					} else if (id === "type_check_171") {
						mappedValue = "샤르도네";
					} else if (id === "type_check_161") {
						mappedValue = "세미용";
					} else if (id === "type_check_159") {
						mappedValue = "소비뇽 블랑";
					} else if (id === "type_check_160") {
						mappedValue = "리슬링";
					} else if (id === "type_check_224") {
						mappedValue = "슈냉 블랑";
					} else if (id === "type_check_225") {
						mappedValue = "모스카토";
					} else if (id === "type_check_166") {
						mappedValue = "피노그리";
					} else if (id === "type_check_226") {
						mappedValue = "비오니에";
					} else if (id === "type_check_163") {
						mappedValue = "게뷔르츠트라미너";
					} else if (id === "type_check_227") {
						mappedValue = "그뤼너 펠트리너";
					} else if (id === "type_check_162") {
						mappedValue = "베르데호";
					} else if (id === "type_check_228") {
						mappedValue = "알리고떼";
					} else if (id === "type_check_174") {
						mappedValue = "기타";
					}
					labelGrapevarieties.push(mappedValue);
				} else if (["type_check_35", "type_check_36", "type_check_66", "type_check_67"].includes(id)) {
					if (id === "type_check_35") {
						priceRange = "~30000";
					} else if (id === "type_check_36") {
						priceRange = "30000~60000";
					} else if (id === "type_check_66") {
						priceRange = "60000~100000";
					} else if (id === "type_check_67") {
						priceRange = "100000~";
					}
					$("#price_range").val(priceRange);
				} else {
			        if(seq == ""){
			            seq = String($(this).val());
			        }else{
			            seq = String($(this).val())+","+seq;
			        }
			        //$("#sh_filter_code").val(seq);
			    }
			});
			
			//var categoryValue = $("#category").val();
			//if(categoryValue === "40000" || categoryValue === "50000"){
			//	$("#category").val(null);  // Set category to null if it's 40000 or 50000
			//}
			
			$("#classified").val("all");
			
			$("#category_type").val(categoryTypes.join(','));
			$("#category_country").val(categoryCountries.join(','));
			$("#label_state").val(labelStates.join(','));
			$("#label_grapevariety").val(labelGrapevarieties.join(','));
			
			html += '<button type="button" class="reset" onclick="all_reset();">초기화</button>';
			$(".filter_item").html(html);
			if($('.filter_item .check_select').length > 0){
				$('.filter_item').removeClass('nodata_fiter');
			}else{
				$('.filter_item').addClass('nodata_fiter');
			}
			//$("#sh_filter_code").val(seq);
			// console.log($("#sh_filter_code").val());
			if( sessionStorage.getItem("checkFilterList") == seq){
				// console.log('동일');
				$('.btn_filter').addClass('apply');
			}else{
				// console.log('동일하지않음');
				$('.btn_filter').removeClass('apply');
			}
			DelFilterEvent();
			//필터 레이어 컨텐츠 하위 동적 여백
			if($(".filter_layer").css("display") == "block"){
				var filterCon = $(".product_lists_page .filter_layer.layer .layer_area .layer_con"),
					filterConBtm = $(".product_lists_page .filter_layer.layer .layer_area .layer_con .bottom"),
					filterConHgt = filterConBtm.outerHeight();
				filterCon.css({"padding-bottom":filterConHgt});
			}
		}
		/**
		 * 필터 조건 삭제 EVENT
		 */
		function DelFilterEvent(val){
			$("#page").val(1);
			$("button[name='del_btn']").on('click', function() {
				var remove_val = val;
				var seq = '';
				$("input:checkbox[name='item_seq']:checked").each(function() {
					if($(this).val() == remove_val){
						$(this).prop("checked", false);
					}
				});
				$("input:radio[name='item_seq']:checked").each(function() {
					if($(this).val() == remove_val){
						$(this).prop("checked", false);
					}
				});
				 filter_submit()
			});
		};
		// 필터 리셋
		/* function all_reset(e) {
			e.preventDefault();
			$("#sh_filter_code").val("");	// 검색값
			$("input:checkbox[name='item_seq']").prop("checked", false);	// 체크값
			$(".filter_item").empty();	// 체크된값
			$(".filter_item").addClass("nodata_fiter");
			$('.btn_filter').removeClass('apply');
			sessionStorage.setItem("checkFilterList", $("#sh_filter_code").val());
			var form = document.listFrm;
			form.submit();
		} */
		function all_reset() {
		    // 모든 'item_seq' 체크박스를 찾아 'checked' 상태를 제거합니다.
		    var itemSeqCheckboxes = document.querySelectorAll('input[name="item_seq"]');
		    for (var i = 0; i < itemSeqCheckboxes.length; i++) {
		        itemSeqCheckboxes[i].checked = false;
		    }
		    // '.current_filter' 요소 내의 모든 '.check_select' 요소를 찾아 제거합니다.
		    var currentFilterCheckSelects = document.querySelectorAll('.current_filter .check_select');
		    for (var j = 0; j < currentFilterCheckSelects.length; j++) {
		        currentFilterCheckSelects[j].parentNode.removeChild(currentFilterCheckSelects[j]);
		    }
		}
		// 필터 적용
		function filter_btn(){
			var form = document.listFrm;
			var category = form.querySelector("#category");
			
			// 폼에서 값이 없는 항목을 제거한 후 제출
		    $(form).find('input[type="hidden"]').each(function() {
		        if (!$(this).val()) {
		            $(this).remove();  // 빈 값을 가진 input 요소 제거
		        }
		    });
			
		 	// Check if category value is 40000 or 50000
		    if (category.value === "40000" || category.value === "50000") {
		      // Set category value to null if it's 40000 or 50000
		      category.value = null;
		    }
			form.submit();
		}
		/************************ 필터 ************************/
		/* var db = (document.body) ? 1 : 0;
		var scroll = (window.scrollTo) ? 1 : 0;
		function loadScrollsetCookie(name, value, expires, path, domain, secure) {
			var curCookie = name + "=" + escape(value) +
			((expires) ? "; expires=" + expires.toGMTString() : "") +
			((path) ? "; path=" + path : "") +
			((domain) ? "; domain=" + domain : "") +
			((secure) ? "; secure" : "");
			document.cookie = curCookie;
		}
		function loadScrollgetCookie(name) {
			var dc = document.cookie;
			var prefix = name + "=";
			var begin = dc.indexOf("; " + prefix);
			if (begin == -1) {
			begin = dc.indexOf(prefix);
			if (begin != 0) return null;
			} else {
			begin += 2;
			}
			var end = document.cookie.indexOf(";", begin);
			if (end == -1) end = dc.length;
			return unescape(dc.substring(begin + prefix.length, end));
		}
		function loadScroll() {
			if (!scroll) return;
			var getCurrentPd = loadScrollgetCookie("currentPd");
		// 	console.log(getCurrentPd);
			if(getCurrentPd){
				// alert("move");
				var ar = $("[data-val="+getCurrentPd+"]").offset().top - 200
				// alert(ar);
				setTimeout(function () {
					window.scrollTo(0, parseInt(ar))
				},200);
				deleteCookie('currentPd');
				deleteCookie('pageInt');
				pageInt=null;
			}
		}
		function scrollSaveEventBinding(_target){
		// 	console.log(_target)
			loadScrollsetCookie("currentPd", _target.attr('data-val'));
			loadScrollsetCookie("pageInt", $("#page").val());
			// setCookie("docHeight", $('#contents').height());
		}
		function deleteCookie (name) {
			document.cookie = name + '=; expires=Thu, 01 Jan 1999 00:00:10 GMT;';
		} */
	</script>
</section>
<!-- //contents -->

<!-- footer -->
<%@ include file="../common/footer.jsp" %>
<!-- //footer -->

<script language=javascript>
    $(".quick_menu .menu_open").on("click", function () {
        $(".quick_menu").toggleClass("on")
    });
</script>
</body>
</html>
<!--백로그 API-->
<script type="text/JavaScript">
	var page = '';
	if( page == false){
		page = 'main';
	}
	if( page !== 'product_view' && page !== 'order_ok'){
		console.log(page);
		/*
		RC_Method({
			sign_up_data: "",
			page_type : page, 
			behavior:"page_view"
		});
		*/
	}
</script>
<!--백로그 API-->
<!--lazy_loading-->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/lozad/dist/lozad.min.js"></script>
<script>
	const observer = lozad();
	observer.observe();
	console.log('test');
</script>
<!--lazy_loading-->