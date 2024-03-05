<%@page session="true"%><%@taglib uri="http://www.springframework.org/tags" prefix="sp"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><html version="XHTML+RDFa 1.1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/xhtml http://www.w3.org/MarkUp/SCHEMA/xhtml-rdfa-2.xsd" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#" xmlns:xsd="http://www.w3.org/2001/XMLSchema#" xmlns:cc="http://creativecommons.org/ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:foaf="http://xmlns.com/foaf/0.1/">
<head data-color="${colorPair}" profile="http://www.w3.org/1999/xhtml/vocab">
<title>${results.getTitle()}&mdash;LodView</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.11/codemirror.css" integrity="sha512-7vaQ4LLdaXd2IuMd4MUQ6LRFIGbEwJI1aq6KYqL3RjbdQyUkRFhwZKmqmkBXurTFdGlx687lTN8FSJfX6Df8Gw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<jsp:include page="inc/header.jsp"></jsp:include>
<link rel="stylesheet" href="${conf.getStaticResourceURL()}/home.css"/>
</head>
<body id="top">
	<article>
		<header>
			<div id="logoBanner">
				<div id="logo"></div>
			</div>
			<hgroup>
				<h1>
					<span>Knowledge Graph</span>
				</h1>
			</hgroup>
		</header>

		<div id="abstract">
			<div class="value">This tool provides access to information in the <a
					href="https://portal.ehri-project.eu/">EHRI Portal</a> as Linked Open Data (LOD).</div>
		</div>

		<aside class="empty"></aside>

		<div id="directs">
			<div class="value">
				<h3>Explore the data</h3>
				<p>This tool takes data hosted in the EHRI portal and offers it as a Knowledge Graph (KG). Here you can
					browse different EHRI's entities (e.g., country reports, archival institutions descriptions,
					archival descriptions, etc.) as linked data, and you can link to them from you own data.</p>
				<p>This KG follows aligns the data to <a href="https://www.ica.org/en/records-in-contexts-ontology">Records in Context Ontology (RiC-O)</a>
					and uses <a href="https://schema.org/">schema.org</a> and own EHRI properties for completion.
					This specific use and combination will become part of a future EHRI ontology.</p>
				<p>As an ongoing effort to connect with other KGs in the LOD cloud, and to our partner's own efforts, the EHRI KG is now connected to:</p>
				<ul id="linksToOtherKGs">
					<li><a href="http://dati.cdec.it/">CDEC person database</a>: We connect the people mentioned in
						CDEC's description in the EHRI KG to their representation in CDEC's KG, so you can complete the data shown here.</li>
					<li><a href="https://www.dbpedia.org/">DBpedia</a>: We link countries and languages to their
						DBpedia counterparts, so you can explore more generic data about them.</li>
					<li><a href="https://www.wikidata.org/">Wikidata</a>: As part of a previous strategy all camps
						and ghettos were uploaded to Wikidata and therefore linked with their corresponding Wikidata
						entities.</li>
				</ul>
				<p>To start exploring the data you have several possibilities listed below:</p>
				<ul id="explorationPossibilities">
					<li><a href="#countriesListSection">Countries list</a>: You can use our countries list to start
						browsing institutions and, where available, their collections</li>
					<li><a href="#sparqlQueries">SPARQL examples</a>: You can consult our SPARQL queries examples and adapt them to your needs.</li>
					<li><a href="${conf.homeUrl}query/">SPARQL endpoint</a>: You can test your own queries against
						our SPARQL
						endpoint</li>
				</ul>
			</div>

			<div class="value" id="countriesListSection">
				<h3>Countries list</h3>
                <p>The country reports constitute the main entry point to exploring the data in the EHRI portal. They offers an introduction to the Holocaust research and landscape in a certain country. Therefore, we propose that non-experts users start browsing this KG from one of the proposed countries in order to get an idea of the potential of this new tool. Below you can find a comprehensive list of the countries represented in the EHRI portal.</p>
                <ul id="countriesList">
					<li><a class="customButton" href="countries/al">Albania</a></li>
					<li><a class="customButton" href="countries/dz">Algeria</a></li>
					<li><a class="customButton" href="countries/ar">Argentina</a></li>
					<li><a class="customButton" href="countries/am">Armenia</a></li>
					<li><a class="customButton" href="countries/au">Australia</a></li>
					<li><a class="customButton" href="countries/at">Austria</a></li>
					<li><a class="customButton" href="countries/az">Azerbaijan</a></li>
					<li><a class="customButton" href="countries/by">Belarus</a></li>
					<li><a class="customButton" href="countries/be">Belgium</a></li>
					<li><a class="customButton" href="countries/ba">Bosnia & Herzegovina</a></li>
					<li><a class="customButton" href="countries/bg">Bulgaria</a></li>
					<li><a class="customButton" href="countries/ca">Canada</a></li>
					<li><a class="customButton" href="countries/hr">Croatia</a></li>
					<li><a class="customButton" href="countries/cz">Czechia</a></li>
					<li><a class="customButton" href="countries/dk">Denmark</a></li>
					<li><a class="customButton" href="countries/eg">Egypt</a></li>
					<li><a class="customButton" href="countries/ee">Estonia</a></li>
					<li><a class="customButton" href="countries/fi">Finland</a></li>
					<li><a class="customButton" href="countries/fr">France</a></li>
					<li><a class="customButton" href="countries/ge">Georgia</a></li>
					<li><a class="customButton" href="countries/de">Germany</a></li>
					<li><a class="customButton" href="countries/gr">Greece</a></li>
					<li><a class="customButton" href="countries/hu">Hungary</a></li>
					<li><a class="customButton" href="countries/ie">Ireland</a></li>
					<li><a class="customButton" href="countries/il">Israel</a></li>
					<li><a class="customButton" href="countries/it">Italy</a></li>
					<li><a class="customButton" href="countries/jp">Japan</a></li>
					<li><a class="customButton" href="countries/kz">Kazakhstan</a></li>
					<li><a class="customButton" href="countries/kg">Kyrgyzstan</a></li>
					<li><a class="customButton" href="countries/lv">Latvia</a></li>
					<li><a class="customButton" href="countries/ly">Libya</a></li>
					<li><a class="customButton" href="countries/li">Liechtenstein</a></li>
					<li><a class="customButton" href="countries/lt">Lithuania</a></li>
					<li><a class="customButton" href="countries/lu">Luxembourg</a></li>
					<li><a class="customButton" href="countries/md">Moldova</a></li>
					<li><a class="customButton" href="countries/mc">Monaco</a></li>
					<li><a class="customButton" href="countries/me">Montenegro</a></li>
					<li><a class="customButton" href="countries/ma">Morocco</a></li>
					<li><a class="customButton" href="countries/nl">The Netherlands</a></li>
					<li><a class="customButton" href="countries/mk">North Macedonia</a></li>
					<li><a class="customButton" href="countries/no">Norway</a></li>
					<li><a class="customButton" href="countries/pl">Poland</a></li>
					<li><a class="customButton" href="countries/pt">Portugal</a></li>
					<li><a class="customButton" href="countries/ro">Romania</a></li>
					<li><a class="customButton" href="countries/ru">Russia</a></li>
					<li><a class="customButton" href="countries/sm">San Marino</a></li>
					<li><a class="customButton" href="countries/rs">Serbia</a></li>
					<li><a class="customButton" href="countries/sk">Slovakia</a></li>
					<li><a class="customButton" href="countries/si">Slovenia</a></li>
					<li><a class="customButton" href="countries/za">South Africa</a></li>
					<li><a class="customButton" href="countries/es">Spain</a></li>
					<li><a class="customButton" href="countries/se">Sweden</a></li>
					<li><a class="customButton" href="countries/ch">Switzerland</a></li>
					<li><a class="customButton" href="countries/tw">Taiwan</a></li>
					<li><a class="customButton" href="countries/tj">Tajikistan</a></li>
					<li><a class="customButton" href="countries/tn">Tunisia</a></li>
					<li><a class="customButton" href="countries/tm">Turkmenistan</a></li>
					<li><a class="customButton" href="countries/ua">Ukraine</a></li>
					<li><a class="customButton" href="countries/gb">United Kingdom</a></li>
					<li><a class="customButton" href="countries/us">United States</a></li>
					<li><a class="customButton" href="countries/uz">Uzbekistan</a></li>
					<li><a class="customButton" href="countries/va">Vatican City</a></li>
					<li><a class="customButton" href="countries/xk">Kosovo</a></li>
                </ul>
			</div>

			<div>
				<h3>SPARQL examples</h3>
				<p>In order to show how data is organised and how data can be consulted we provide different examples of SPARQL queries. They cover simple queries, some aggregatres to obtain statistical data and some federated queries that query CDEC's and DBpedia's data to expand this KG possibilities.</p>
				<p>Federated queries show the potential that semantic technologies can suposse for users. However, even though the federated queries exposed here are carefully selected, take into account that modifying and expanding them can derive into unexpected long computation times.</p>
				<div id="sparqlQueries">
				<div class="queryExample">
					<div class="queryTitleAndButton">
						<p>List countries and labels</p>
						<button class="customButton" onclick="openOnEndpoint(this);">Try it</button>
					</div>
<textarea>PREFIX db: &lt;http://dbpedia.org/&gt;
PREFIX dbp: &lt;http://dbpedia.org/property/&gt;
PREFIX rico: &lt;https://www.ica.org/standards/RiC/ontology#&gt;
PREFIX dbo: &lt;http://dbpedia.org/ontology/&gt;
PREFIX owl: &lt;http://www.w3.org/2002/07/owl#&gt;
PREFIX schema: &lt;http://schema.org/&gt;
PREFIX rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt;
PREFIX rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt;
PREFIX ehri:  &lt;http://lod.ehri-project-test.eu/&gt;
PREFIX ehri_institutions: &lt;http://lod.ehri-project-test.eu/institutions/&gt;
PREFIX ehri_units: &lt;http://lod.ehri-project-test.eu/units/&gt;
PREFIX ehri_countries: &lt;http://lod.ehri-project-test.eu/countries/&gt;

SELECT ?country ?countryLabel WHERE {
	?country a rico:Place ;
			rico:name ?countryLabel .
}</textarea>
				</div>
				<div class="queryExample">
					<div class="queryTitleAndButton">
						<p>Get institutions in a country</p>
						<button class="customButton"  onclick="openOnEndpoint(this);">Try it</button>
					</div>
<textarea>PREFIX db: &lt;http://dbpedia.org/&gt;
PREFIX dbp: &lt;http://dbpedia.org/property/&gt;
PREFIX rico: &lt;https://www.ica.org/standards/RiC/ontology#&gt;
PREFIX dbo: &lt;http://dbpedia.org/ontology/&gt;
PREFIX owl: &lt;http://www.w3.org/2002/07/owl#&gt;
PREFIX schema: &lt;http://schema.org/&gt;
PREFIX rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt;
PREFIX rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt;
PREFIX ehri:  &lt;http://lod.ehri-project-test.eu/&gt;
PREFIX ehri_institutions: &lt;http://lod.ehri-project-test.eu/institutions/&gt;
PREFIX ehri_units: &lt;http://lod.ehri-project-test.eu/units/&gt;
PREFIX ehri_countries: &lt;http://lod.ehri-project-test.eu/countries/&gt;
SELECT ?institution ?institutionLabel WHERE {
	ehri_countries:ar a rico:Place ;
			rico:name ?countryLabel ;
			rico:containsOrContained ?institution .
	?institution rdfs:label ?institutionLabel .
}</textarea>
				</div>
				<div class="queryExample">
					<div class="queryTitleAndButton">
						<p>Get instantiations from NIOD</p>
						<button class="customButton"  onclick="openOnEndpoint(this);">Try it</button>
					</div>
<textarea>PREFIX db: &lt;http://dbpedia.org/&gt;
PREFIX dbp: &lt;http://dbpedia.org/property/&gt;
PREFIX rico: &lt;https://www.ica.org/standards/RiC/ontology#&gt;
PREFIX dbo: &lt;http://dbpedia.org/ontology/&gt;
PREFIX owl: &lt;http://www.w3.org/2002/07/owl#&gt;
PREFIX schema: &lt;http://schema.org/&gt;
PREFIX rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt;
PREFIX rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt;
PREFIX ehri:  &lt;http://lod.ehri-project-test.eu/&gt;
PREFIX ehri_institutions: &lt;http://lod.ehri-project-test.eu/institutions/&gt;
PREFIX ehri_units: &lt;http://lod.ehri-project-test.eu/units/&gt;
PREFIX ehri_countries: &lt;http://lod.ehri-project-test.eu/countries/&gt;
SELECT * WHERE {
	ehri_countries:ar a rico:Place ;
			rico:name ?countryLabel ;
			rico:containsOrContained ?institution .
		?institution a rico:CorporateBody ;
			rdfs:label ?institutionLabel ;
		schema:telephone ?phone ;
			schema:email ?email ;
			rico:hasOrHadLocation [
				rico:location ?address ;
			schema:postalCode ?zipCode 
		]
}</textarea>
				</div>
				<div class="queryExample">
					<div class="queryTitleAndButton">
						<p>Get records from NIOD</p>
						<button class="customButton"  onclick="openOnEndpoint(this);">Try it</button>
					</div>
<textarea>PREFIX db: <http://dbpedia.org/>
PREFIX db: &lt;http://dbpedia.org/&gt;
PREFIX dbp: &lt;http://dbpedia.org/property/&gt;
PREFIX rico: &lt;https://www.ica.org/standards/RiC/ontology#&gt;
PREFIX dbo: &lt;http://dbpedia.org/ontology/&gt;
PREFIX owl: &lt;http://www.w3.org/2002/07/owl#&gt;
PREFIX schema: &lt;http://schema.org/&gt;
PREFIX rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt;
PREFIX rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt;
PREFIX ehri:  &lt;http://lod.ehri-project-test.eu/&gt;
PREFIX ehri_institutions: &lt;http://lod.ehri-project-test.eu/institutions/&gt;
PREFIX ehri_units: &lt;http://lod.ehri-project-test.eu/units/&gt;
PREFIX ehri_countries: &lt;http://lod.ehri-project-test.eu/countries/&gt;
SELECT ?record ?recordLabel WHERE {
		ehri_institutions:nl-002896 a rico:CorporateBody ;
			rico:isOrWasHolderOf ?instantiation .
		?instantiation rdfs:label ?instantiationLabel .
		?instantiation rico:isInstantiationOf ?record .
		?record rdfs:label ?recordLabel .
}</textarea>
				</div>
				<div class="queryExample">
					<div class="queryTitleAndButton">
						<p>Get "scope and content" information of records from Kazerne Dossin that have Dutch descriptions</p>
						<button class="customButton"  onclick="openOnEndpoint(this);">Try it</button>
					</div>
<textarea>PREFIX db: &lt;http://dbpedia.org/&gt;
PREFIX dbp: &lt;http://dbpedia.org/property/&gt;
PREFIX rico: &lt;https://www.ica.org/standards/RiC/ontology#&gt;
PREFIX dbo: &lt;http://dbpedia.org/ontology/&gt;
PREFIX owl: &lt;http://www.w3.org/2002/07/owl#&gt;
PREFIX schema: &lt;http://schema.org/&gt;
PREFIX rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt;
PREFIX rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt;
PREFIX ehri:  &lt;http://lod.ehri-project-test.eu/&gt;
PREFIX ehri_institutions: &lt;http://lod.ehri-project-test.eu/institutions/&gt;
PREFIX ehri_units: &lt;http://lod.ehri-project-test.eu/units/&gt;
PREFIX ehri_countries: &lt;http://lod.ehri-project-test.eu/countries/&gt;
SELECT ?record ?recordLabel ?scopeAndContent WHERE {
		ehri_institutions:be-002157 a rico:CorporateBody ;
			rico:isOrWasHolderOf ?instantiation .
		?instantiation rdfs:label ?instantiationLabel .
		?instantiation rico:isInstantiationOf ?record .
		?record rdfs:label ?recordLabel .
		?record rico:scopeAndContent ?scopeAndContent .
		FILTER(lang(?scopeAndContent) = "nld")
}</textarea>
				</div>
				<div class="queryExample">
					<div class="queryTitleAndButton">
						<p>Get records with the subject "Newspapers"</p>
						<button class="customButton"  onclick="openOnEndpoint(this);">Try it</button>
					</div>
<textarea>PREFIX db: &lt;http://dbpedia.org/&gt;
PREFIX dbp: &lt;http://dbpedia.org/property/&gt;
PREFIX rico: &lt;https://www.ica.org/standards/RiC/ontology#&gt;
PREFIX dbo: &lt;http://dbpedia.org/ontology/&gt;
PREFIX owl: &lt;http://www.w3.org/2002/07/owl#&gt;
PREFIX schema: &lt;http://schema.org/&gt;
PREFIX rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt;
PREFIX rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt;
PREFIX ehri:  &lt;http://lod.ehri-project-test.eu/&gt;
PREFIX ehri_institutions: &lt;http://lod.ehri-project-test.eu/institutions/&gt;
PREFIX ehri_units: &lt;http://lod.ehri-project-test.eu/units/&gt;
PREFIX ehri_countries: &lt;http://lod.ehri-project-test.eu/countries/&gt;
PREFIX ehri_terms: &lt;http://lod.ehri-project-test.eu/vocabularies/ehri-terms/&gt;
SELECT ?record ?recordLabel WHERE {
		?record a rico:Record ;
			rdfs:label ?recordLabel ;
			rico:hasOrHadSubject ehri_terms:1069 .
}</textarea>
				</div>
				<div class="queryExample">
					<div class="queryTitleAndButton">
						<p>Number of records in a country</p>
						<button class="customButton"  onclick="openOnEndpoint(this);">Try it</button>
					</div>
<textarea>PREFIX db: &lt;http://dbpedia.org/&gt;
PREFIX dbp: &lt;http://dbpedia.org/property/&gt;
PREFIX rico: &lt;https://www.ica.org/standards/RiC/ontology#&gt;
PREFIX dbo: &lt;http://dbpedia.org/ontology/&gt;
PREFIX owl: &lt;http://www.w3.org/2002/07/owl#&gt;
PREFIX schema: &lt;http://schema.org/&gt;
PREFIX rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt;
PREFIX rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt;
PREFIX ehri:  &lt;http://lod.ehri-project-test.eu/&gt;
PREFIX ehri_institutions: &lt;http://lod.ehri-project-test.eu/institutions/&gt;
PREFIX ehri_units: &lt;http://lod.ehri-project-test.eu/units/&gt;
PREFIX ehri_countries: &lt;http://lod.ehri-project-test.eu/countries/&gt;
SELECT (COUNT(?record) as ?totalRecords) WHERE {
	ehri_countries:gb a rico:Place ;
			rico:containsOrContained ?institution .
		?institution a rico:CorporateBody ;
		rico:isOrWasHolderOf ?instantiation .
		?instantiation a rico:Instantiation ;
			rico:isInstantiationOf ?record .
		?record a rico:Record .
}</textarea>
				</div>
				<div class="queryExample">
					<div class="queryTitleAndButton">
						<p>Number of records per institution in a country</p>
						<button class="customButton"  onclick="openOnEndpoint(this);">Try it</button>
					</div>
<textarea>PREFIX db: &lt;http://dbpedia.org/&gt;
PREFIX dbp: &lt;http://dbpedia.org/property/&gt;
PREFIX rico: &lt;https://www.ica.org/standards/RiC/ontology#&gt;
PREFIX dbo: &lt;http://dbpedia.org/ontology/&gt;
PREFIX owl: &lt;http://www.w3.org/2002/07/owl#&gt;
PREFIX schema: &lt;http://schema.org/&gt;
PREFIX rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt;
PREFIX rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt;
PREFIX ehri:  &lt;http://lod.ehri-project-test.eu/&gt;
PREFIX ehri_institutions: &lt;http://lod.ehri-project-test.eu/institutions/&gt;
PREFIX ehri_units: &lt;http://lod.ehri-project-test.eu/units/&gt;
PREFIX ehri_countries: &lt;http://lod.ehri-project-test.eu/countries/&gt;
SELECT ?institution (COUNT(?record) as ?totalRecords) WHERE {
	ehri_countries:gb a rico:Place ;
			rico:containsOrContained ?institution .
		?institution a rico:CorporateBody ;
		rico:isOrWasHolderOf ?instantiation .
		?instantiation a rico:Instantiation ;
			rico:isInstantiationOf ?record .
		?record a rico:Record .
} GROUP BY ?institution ORDER BY DESC(?totalRecords)</textarea>
				</div>
				<div class="queryExample">
					<div class="queryTitleAndButton">
						<p>Average of records per country</p>
						<button class="customButton"  onclick="openOnEndpoint(this);">Try it</button>
					</div>
<textarea>PREFIX db: &lt;http://dbpedia.org/&gt;
PREFIX dbp: &lt;http://dbpedia.org/property/&gt;
PREFIX rico: &lt;https://www.ica.org/standards/RiC/ontology#&gt;
PREFIX dbo: &lt;http://dbpedia.org/ontology/&gt;
PREFIX owl: &lt;http://www.w3.org/2002/07/owl#&gt;
PREFIX schema: &lt;http://schema.org/&gt;
PREFIX rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt;
PREFIX rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt;
PREFIX ehri:  &lt;http://lod.ehri-project-test.eu/&gt;
PREFIX ehri_institutions: &lt;http://lod.ehri-project-test.eu/institutions/&gt;
PREFIX ehri_units: &lt;http://lod.ehri-project-test.eu/units/&gt;
PREFIX ehri_countries: &lt;http://lod.ehri-project-test.eu/countries/&gt;
SELECT ?country (AVG(?totalRecordByInstitution) as ?meanByCountry) WHERE {
	?country a rico:Place ;
			rico:containsOrContained ?institution .
		{
			SELECT ?institution (COUNT(?record) as ?totalRecordByInstitution) WHERE {
				?institution a rico:CorporateBody ;
					rico:isOrWasHolderOf ?instantiation .
				?instantiation a rico:Instantiation ;
					rico:isInstantiationOf ?record .
				?record a rico:Record .
			} GROUP BY ?institution
		}
		
} GROUP BY ?country</textarea>
				</div>
				<div class="queryExample">
					<div class="queryTitleAndButton">
						<p>Number of records in countries with less than 100000 population (Federated query against DBpedia)</p>
						<button class="customButton"  onclick="openOnEndpoint(this);">Try it</button>
					</div>
<textarea>PREFIX rico: &lt;https://www.ica.org/standards/RiC/ontology#&gt;
PREFIX dbo: &lt;http://dbpedia.org/ontology/&gt;
PREFIX owl: &lt;http://www.w3.org/2002/07/owl#&gt;
PREFIX schema: &lt;http://schema.org/&gt;
PREFIX rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt;
PREFIX rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt;
PREFIX ehri:  &lt;http://lod.ehri-project-test.eu/&gt;
PREFIX ehri_institutions: &lt;http://lod.ehri-project-test.eu/institutions/&gt;
PREFIX ehri_units: &lt;http://lod.ehri-project-test.eu/units/&gt;
PREFIX ehri_countries: &lt;http://lod.ehri-project-test.eu/countries/&gt;
SELECT ?countryLabel (count(?instantiation) as ?recordsCount) WHERE {
	?country a rico:Place ;
		owl:sameAs ?dbCountry ;
		rdfs:label ?countryLabel ;
		rico:containsOrContained ?institution .
	SERVICE &lt;https://dbpedia.org/sparql/&gt; {
		?dbCountry  dbo:populationTotal ?population . 
	}
	?institution a rico:CorporateBody ;
		rico:isOrWasHolderOf ?instantiation .
	FILTER (?population &lt; 100000)
}
GROUP BY ?countryLabel</textarea>
				</div>
				<div class="queryExample">
					<div class="queryTitleAndButton">
						<p>Statistics of records whose subject is or not a survivor (Federated query against CDEC)</p>
						<button class="customButton"  onclick="openOnEndpoint(this);">Try it</button>
					</div>
<textarea>PREFIX foaf: &lt;http://xmlns.com/foaf/0.1/&gt;
PREFIX fo: &lt;http://www.w3.org/1999/XSL/Format#&gt;
PREFIX db: &lt;http://dbpedia.org/&gt;
PREFIX dbp: &lt;http://dbpedia.org/property/&gt;
PREFIX rico: &lt;https://www.ica.org/standards/RiC/ontology#&gt;
PREFIX dbo: &lt;http://dbpedia.org/ontology/&gt;
PREFIX owl: &lt;http://www.w3.org/2002/07/owl#&gt;
PREFIX schema: &lt;http://schema.org/&gt;
PREFIX rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt;
PREFIX rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt;
PREFIX ehri:  &lt;http://lod.ehri-project-test.eu/&gt;
PREFIX ehri_institutions: &lt;http://lod.ehri-project-test.eu/institutions/&gt;
PREFIX ehri_units: &lt;http://lod.ehri-project-test.eu/units/&gt;
PREFIX ehri_countries: &lt;http://lod.ehri-project-test.eu/countries/&gt;
PREFIX bio-ext: &lt;http://dati.cdec.it/lod/bio-ext/&gt;
SELECT ?survivor (COUNT(?record) as ?recordCount) WHERE {
	ehri_institutions:it-002845 rico:isOrWasHolderOf ?instantiation .
	?instantiation rico:isInstantiationOf ?record .
	?record rico:hasOrHadSubject ?personEHRI .
	?personEHRI owl:sameAs ?person .
	SERVICE &lt;http://lod.xdams.org/sparql&gt; {
		?person a foaf:Person ;
		bio-ext:shoahSurvivor ?survivor .
	}
} GROUP BY ?survivor</textarea>
				</div>
				<div class="queryExample">
					<div class="queryTitleAndButton">
						<p>Records mentioning people deported to Auschwitz (Federated query against CDEC)</p>
						<button class="customButton"  onclick="openOnEndpoint(this);">Try it</button>
					</div>
<textarea>PREFIX foaf: &lt;http://xmlns.com/foaf/0.1/&gt;
PREFIX fo: &lt;http://www.w3.org/1999/XSL/Format#&gt;
PREFIX db: &lt;http://dbpedia.org/&gt;
PREFIX dbp: &lt;http://dbpedia.org/property/&gt;
PREFIX rico: &lt;https://www.ica.org/standards/RiC/ontology#&gt;
PREFIX dbo: &lt;http://dbpedia.org/ontology/&gt;
PREFIX owl: &lt;http://www.w3.org/2002/07/owl#&gt;
PREFIX schema: &lt;http://schema.org/&gt;
PREFIX rdf: &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt;
PREFIX rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt;
PREFIX ehri:  &lt;http://lod.ehri-project-test.eu/&gt;
PREFIX ehri_institutions: &lt;http://lod.ehri-project-test.eu/institutions/&gt;
PREFIX ehri_units: &lt;http://lod.ehri-project-test.eu/units/&gt;
PREFIX ehri_countries: &lt;http://lod.ehri-project-test.eu/countries/&gt;
PREFIX bio-ext: &lt;http://dati.cdec.it/lod/bio-ext/&gt;
PREFIX shoah: &lt;http://dati.cdec.it/lod/shoah/&gt;

SELECT ?record WHERE {
	ehri_institutions:it-002845 rico:isOrWasHolderOf ?instantiation .
	?instantiation rico:isInstantiationOf ?record .
	?record rico:hasOrHadSubject ?personEHRI .
	?personEHRI owl:sameAs ?person .
	SERVICE &lt;http://lod.xdams.org/sparql&gt; {
		?person a foaf:Person ;
				shoah:persecution ?persecution .
		?persecution shoah:toNaziCamp ?camp .
		?camp rdfs:label "Auschwitz" .
	}
}</textarea>
				</div>
				</div>
			</div>
		</div>

		<div id="inverses" class="empty"></div> 
		<jsp:include page="inc/custom_footer.jsp"></jsp:include>
	</article>
	<jsp:include page="inc/footer.jsp"></jsp:include>

</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.11/codemirror.min.js" integrity="sha512-rdFIN28+neM8H8zNsjRClhJb1fIYby2YCNmoqwnqBDEvZgpcp7MJiX8Wd+Oi6KcJOMOuvGztjrsI59rly9BsVQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.11/mode/sparql/sparql.js" integrity="sha512-QiFBP6HtOOtEtWGRIgU5XIAKJSxOcKrWMTc4k+Q7MZxXGjecH82/TFQJq66rXD8Weq3JBHSsTC+LH/Gf+Wx5cQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
	function openOnEndpoint(callingDOMElement) {
		let code = callingDOMElement.parentElement.parentElement.querySelector("textarea").textContent
			.replaceAll(";", "%3B")
			.replaceAll("\n", "%0A")
			.replaceAll("\t", "%09");
		let url = "${conf.homeUrl}/query/#query=" + code;
		window.open(url, '_blank');
	}

	function loadCodeMirror(DOMElement) {
		console.log("Loading code in CodeMirror...");
		CodeMirror.fromTextArea(DOMElement, {
    		lineNumbers: true,
			lineWrapping: true,
    		theme: "default",
			readOnly: true,
    		viewportMargin: Infinity
		});
	}

	window.onload = function() {
		document.querySelectorAll("textarea").forEach(element => {
			loadCodeMirror(element);
		});
	}
</script>
</html>
