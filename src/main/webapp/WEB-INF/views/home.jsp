<%@page session="true"%><%@taglib uri="http://www.springframework.org/tags" prefix="sp"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><html version="XHTML+RDFa 1.1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/xhtml http://www.w3.org/MarkUp/SCHEMA/xhtml-rdfa-2.xsd" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#" xmlns:xsd="http://www.w3.org/2001/XMLSchema#" xmlns:cc="http://creativecommons.org/ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:foaf="http://xmlns.com/foaf/0.1/">
<head data-color="${colorPair}" profile="http://www.w3.org/1999/xhtml/vocab">
<title>${results.getTitle()}&mdash;LodView</title>
<jsp:include page="inc/header.jsp"></jsp:include>
</head>
<body id="top">
	<article>
		<div id="logoBanner">
			<div id="logo"></div>
		</div>
		<header>
			<hgroup>
				<h1>
					<span>Welcome to the EHRI Linked Open Data portal</span>
				</h1>
				<h2></h2>
			</hgroup>
			<div id="abstract">
				<div class="value">You can browse countries, archival institutions and archival holdings as an interconnected graph.</div>
			</div>

		</header>

		<aside class="empty"></aside>

		<div id="directs">

			<div class="value">
                <p>To start browsing the data we give you some hints of countries that you may want to explore:</p>
                <ul id="countriesList">
                    <li><a href="countries/al">Albania</a></li>
					<li><a href="countries/dz">Algeria</a></li>
					<li><a href="countries/ar">Argentina</a></li>
					<li><a href="countries/am">Armenia</a></li>
					<li><a href="countries/au">Australia</a></li>
					<li><a href="countries/at">Austria</a></li>
					<li><a href="countries/az">Azerbaijan</a></li>
					<li><a href="countries/by">Belarus</a></li>
					<li><a href="countries/be">Belgium</a></li>
					<li><a href="countries/ba">Bosnia & Herzegovina</a></li>
					<li><a href="countries/bg">Bulgaria</a></li>
					<li><a href="countries/ca">Canada</a></li>
					<li><a href="countries/hr">Croatia</a></li>
					<li><a href="countries/cz">Czechia</a></li>
					<li><a href="countries/dk">Denmark</a></li>
					<li><a href="countries/eg">Egypt</a></li>
					<li><a href="countries/ee">Estonia</a></li>
					<li><a href="countries/fi">Finland</a></li>
					<li><a href="countries/fr">France</a></li>
					<li><a href="countries/ge">Georgia</a></li>
					<li><a href="countries/de">Germany</a></li>
					<li><a href="countries/gr">Greece</a></li>
					<li><a href="countries/hu">Hungary</a></li>
					<li><a href="countries/ie">Ireland</a></li>
					<li><a href="countries/il">Israel</a></li>
					<li><a href="countries/it">Italy</a></li>
					<li><a href="countries/jp">Japan</a></li>
					<li><a href="countries/kz">Kazakhstan</a></li>
					<li><a href="countries/kg">Kyrgyzstan</a></li>
					<li><a href="countries/lv">Latvia</a></li>
					<li><a href="countries/ly">Libya</a></li>
					<li><a href="countries/li">Liechtenstein</a></li>
					<li><a href="countries/lt">Lithuania</a></li>
					<li><a href="countries/lu">Luxembourg</a></li>
					<li><a href="countries/md">Moldova</a></li>
					<li><a href="countries/mc">Monaco</a></li>
					<li><a href="countries/me">Montenegro</a></li>
					<li><a href="countries/ma">Morocco</a></li>
					<li><a href="countries/nl">The Netherlands</a></li>
					<li><a href="countries/mk">North Macedonia</a></li>
					<li><a href="countries/no">Norway</a></li>
					<li><a href="countries/pl">Poland</a></li>
					<li><a href="countries/pt">Portugal</a></li>
					<li><a href="countries/ro">Romania</a></li>
					<li><a href="countries/ru">Russia</a></li>
					<li><a href="countries/sm">San Marino</a></li>
					<li><a href="countries/rs">Serbia</a></li>
					<li><a href="countries/sk">Slovakia</a></li>
					<li><a href="countries/si">Slovenia</a></li>
					<li><a href="countries/za">South Africa</a></li>
					<li><a href="countries/es">Spain</a></li>
					<li><a href="countries/se">Sweden</a></li>
					<li><a href="countries/ch">Switzerland</a></li>
					<li><a href="countries/tw">Taiwan</a></li>
					<li><a href="countries/tj">Tajikistan</a></li>
					<li><a href="countries/tn">Tunisia</a></li>
					<li><a href="countries/tm">Turkmenistan</a></li>
					<li><a href="countries/ua">Ukraine</a></li>
					<li><a href="countries/gb">United Kingdom</a></li>
					<li><a href="countries/us">United States</a></li>
					<li><a href="countries/uz">Uzbekistan</a></li>
					<li><a href="countries/va">Vatican City</a></li>
					<li><a href="countries/xk">Kosovo</a></li>
                </ul>
            </div>

		</div>

		<div id="inverses" class="empty"></div> 
		<jsp:include page="inc/custom_footer.jsp"></jsp:include>
	</article>
	<jsp:include page="inc/footer.jsp"></jsp:include>

</body>
</html>
