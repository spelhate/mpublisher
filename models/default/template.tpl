
	<li class="item" id ="templateRight" style="">
		<h3 class="s-title-feature">{{organisme}}</h3>
		<div id="select-features-list">
			<span class="select-features">{{level}}</span>
			<span class="select-features">{{annee}}</span>
			<!-- Alerte: Chiffres de l'année en cours -->
			<p class="warning warning-info{{annee}}">Les informations affichées représentent l'année en cours</p>
		</div>

		<!-- Localisation géo n+1 -->
		<div id="loc-geo-org-{{level}}">
			<p><span class="fas fa-map-marker-alt"></span> Organisme situé dans l'intercommunalité {{nom_epci}}</p>
		</div>


		<!-- /.Localisation géo n+1 -->
		


		<!-- Condition d'affichage -->
		<div id="s-user-{{adherent}}">
		    <!-- L'entité utilise le service -->
			<div class="s-user-service-oui">
				<div id="user-synthese">
				    <h4 class="s-title-feature">Usages des services</h4>
					<div class="row">
						<div class="col-sm-8" id="service-list">
							<div class="s-block-grey s-service-block" id="sdm-{{service_sdm}}">
								<div class="s-icon-block">
										<img class="s-icon" src="https://geobretagne.fr/apps/megalis-services/img/marches.svg">
								</div>
								<div class="s-service-block-info">
									<span class="s-service-title">Salles des marchés publics</span>
									<span class="s-service-subtitle s-sub-{{service_sdm}}"> {{nb_procedure}} procédure(s) lancée(s)</span>
								</div>						
							</div>
							<div class="s-block-grey s-service-block" id="idelibre-{{service_idelibre}}">
								<div class="s-icon-block">
										<img class="s-icon" src="https://geobretagne.fr/apps/megalis-services/img/idelibre.svg">
								</div>
								<div class="s-service-block-info">
									<span class="s-service-title">Convocation électronique des élus (I-delibRe)</span>
								</div>						
							</div>
							<div class="s-block-grey s-service-block" id="actes-{{service_actes}}">
								<div class="s-icon-block">
										<img class="s-icon" src="https://geobretagne.fr/apps/megalis-services/img/flux_actes.svg">
								</div>
								<div class="s-service-block-info">
									<span class="s-service-title">Télétransmission des actes</span>
									<span class="s-service-subtitle s-sub-{{service_actes}}"> {{nb_actes}} acte(s) transmi(s)</span>
									<!--<span class="s-service-subtitle s-sub-{{service_actes}}"> dont {{nb_delib_publie}} délibération(s) publiée(s) en opendata</span>-->
								</div>						
							</div>							
							<div class="s-block-grey s-service-block" id="pes-{{service_pes}}">
								<div class="s-icon-block">
										<img class="s-icon" src="https://geobretagne.fr/apps/megalis-services/img/flux_pes.svg">
								</div>
								<div class="s-service-block-info">
									<span class="s-service-title">Télétransmission des flux PES</span>
									<span class="s-service-subtitle s-sub-{{service_pes}}"> {{nb_pes}} PES transmi(s)</span>
								</div>						
							</div>
							<div class="s-block-grey s-service-block" id="parapheur-{{service_parapheur}}">
								<div class="s-icon-block">
										<img class="s-icon" src="https://geobretagne.fr/apps/megalis-services/img/parapheur.svg">
								</div>
								<div class="s-service-block-info">
									<span class="s-service-title">Parapheur électronique</span>
									<span class="s-service-subtitle s-sub-{{service_parapheur}}">Type : {{offre_parapheur}}</span>
								</div>						
							</div>
							<div class="s-block-grey s-service-block" id="ged-{{service_ged}}">
								<div class="s-icon-block">
										<img class="s-icon" src="https://geobretagne.fr/apps/megalis-services/img/ged.svg">
								</div>
								<div class="s-service-block-info">
									<span class="s-service-title">Gestion électronique de documents (GED)</span>
								</div>						
							</div>
							<div class="s-block-grey s-service-block" id="pydio-{{service_pydio}}">
								<div class="s-icon-block">
										<img class="s-icon" src="https://geobretagne.fr/apps/megalis-services/img/pydio.svg">
								</div>
								<div class="s-service-block-info">
									<span class="s-service-title">Service d'échanges sécurisés des fichiers (SESF)</span>
								</div>						
							</div>
							<div class="s-block-grey s-service-block" id="visio-{{service_visio}}">
								<div class="s-icon-block">
										<img class="s-icon" src="https://geobretagne.fr/apps/megalis-services/img/visio.svg">
								</div>
								<div class="s-service-block-info">
									<span class="s-service-title">Visioconférence</span>
									<span class="s-service-subtitle" style="opacity:0;"> Blank</span>
								</div>						
							</div>
						</div>
						<div class="col-sm-4" id="collectivite-number">
							<div class="s-block-grey s-service-block-num center" id="date">
								<span class="s-service-number" style="font-size: 14px; margin: 15px 0px;">{{date_adhesion}}</span>
								<span class="s-service-titlenumber">Date d'ahésion au bouquet de services</span>
								<span class="s-service-subtitlenumber">pour l'entité sélectionnée</span>													
							</div>
							<div class="s-block-grey s-service-block-num center" id="comptes">
								<img class="icon" src="https://geobretagne.fr/apps/megalis-services/img/s-user.svg" style="width: 45px;">
								<span class="s-service-number">{{nb_agent_megalis}}</span>
								<span class="s-service-titlenumber">Nombre de comptes actifs</span>
								<span class="s-service-subtitlenumber">pour l'entité électionnée</span>													
							</div>
							<div class="s-block-grey s-service-block-num center" id="nb_service">
							    <img class="icon" src="https://geobretagne.fr/apps/megalis-services/img/user_service.svg" style="width: 45px;">
								<span class="s-service-number" id="nb_serv_num_{{siren}}"></span>							
								<span class="s-service-titlenumber">Services numériques utilisés</span>
								<span class="s-service-subtitlenumber">pour l'entité sélectionnée</span>													
							</div>
						</div>
					</div>	
				</div>
				<div id="user-numberkey">					
					<div class="row" id="NumberCommunes_{{level}}">
						<h4 class="s-title-feature">Chiffres clés du territoire</h4>
						<div class="s-block-numberkey" id="numberpop">
								<div class="s-icon-numberkey">
										<img class="s-numberkey" src="https://geobretagne.fr/apps/megalis-services/img/pop.svg" >
								</div>
								<div class="s-numberkey-block-info">
									<p class="s-numberkey-number" ><span id="nb_pop_commune_{{siren}}"></span> habitants</p>	
									<span class="s-numberkey-subtitlenumber">pour l'entité sélectionnée en 2018</span>								
								</div>						
						</div>
						<p class="s-title-Table">Services utilisés par organisme pour l'année en cours :</p>
						<div class="serviceInfosTable" >
							<table class="serviceTable" id="serviceTableCom_{{siren}}">
								<thead class="titleTable">
									<th class="nom">Organisme(s)</th>
									<th class="service_label">Salle des marchés</th>
									<th class="service_label">IdeliBre</th>
									<th class="service_label">Actes</th>
									<th class="service_label">PES</th>
									<th class="service_label">Parapheur</th>
									<th class="service_label">GED</th>
									<th class="service_label">SESF</th>
									<th class="service_label">Visio</th>
								</thead>
								<tbody></tbody>
							</table>
							<div id="noAdherent_{{siren}}"></div>
						</div>
					</div>
					<div class="row" id="NumberEPCI_{{level}}">
						<h4 class="s-title-feature">Chiffres clés du territoire</h4>
						<div class="s-block-numberkey" id="numberpop">
								<div class="s-icon-numberkey">
										<img class="s-numberkey" src="https://geobretagne.fr/apps/megalis-services/img/pop.svg" >
								</div>
								<div class="s-numberkey-block-info">
									<p class="s-numberkey-number" ><span id="nb_pop_epci_{{siren}}"></span> habitants</p>	
									<span class="s-numberkey-subtitlenumber">pour l'entité sélectionnée en 2018</span>								
								</div>						
						</div>
						<p class="s-title-Table">Services utilisés par organisme pour l'année en cours :</p>
						<div class="serviceInfosTable" >
							<table class="serviceTable" id="serviceTableEPCI_{{siren}}">
								<thead class="titleTable">
									<th class="nom">Organismes</th>
									<th class="service_label">Salle des marchés</th>
									<th class="service_label">IdeliBre</th>
									<th class="service_label">Actes</th>
									<th class="service_label">PES</th>
									<th class="service_label">Parapheur</th>
									<th class="service_label">GED</th>
									<th class="service_label">SESF</th>
									<th class="service_label">Visio</th>
								</thead>
								<tbody></tbody>
							</table>
						</div>
					</div>
				</div>	

			<!-- /.OUI-->					
			</div>
			<!-- ************** -->
			<!-- L'entité n'utilise pas le service -->
			<div class="s-user-service-non">
				<div class="s-icon-block">
					<img class="s-icon" src="https://geobretagne.fr/apps/megalis-services/img/user.svg">
				</div>
				<h2 class="s-user-title-feature">Oops !</h2>
				<p class="text-feature">Il semble que cette collectivité n'a pas encore utilisé les services numériques proposés par Mégalis Bretagne cette année.</p>
				<div class="btn-link-user">
					<a href="https://www.megalis.bretagne.bzh/jcms/mw_24551/bouquet-de-services-2020-2024" target="_blank">En savoir plus</a>
				</div>
			<!-- /.NON-->	
			</div>
		</div>
		
	</li>


<style>

	/* Définition des propriétés de style pour le service */
	:root {
		--mycolor:#161A30;
		--mycolorsdm:#514367;
		--mycoloridelibre:#5E5296;
		--mycoloractes:#4D79B8;
		--mycolorpes:#5BB1D8;
		--mycolorparapheur:#F7C750;
		--mycolorpydio:#F28E67;
		--mycolorsged:#add255;
		--mycolorvisio:#A1425B;
		--myfont:'Inter', sans-serif;
	}
	/* */
	
	#templateRight {
		padding: 10px;
	}

	.s-title-feature {
		color: var(--mycolor);
	    font-family: var(--myfont);
	    font-size: 19px;
	    line-height: 1.2;
		font-weight: 700;
	}

	h4.s-title-feature {
		font-size: 18px;
		font-weight: 600;
	}

	.subtitle-feature {
		color: var(--mycolor);
		font-family:var(--myfont);
		font-size:18px;
		margin-top:7%;
		line-height:1;
	}

	.text-feature, p {
		font-family:var(--myfont);
		color:#555;
		font-size:13px;
	}

	.s-block-grey {
    	border-radius: 20px;
    	background-color: #e2e2e28f;
	}

	.center{
    	text-align:center;
	}

	/* Critères de selection des entités */

	span.select-features {
		background-color: var(--mycolor);
		padding: 5px 10px;
		color: white;
		font-size: 11px;
		font-family: var(--myfont);
		border-radius: 12px;
	}

	/* Message d'alerte sur la validité des informations */ 

	p.warning {
		font-size: 11px!important;
		font-style: italic!important;
		font-weight: 500!important;
		margin: 10px 0px;
	}

	.warning-info2019, .warning-info2020 {
		display:none;
	}

	.warning-info2021{
		display:block;
	}

	/* --- COLLECTIVITES USERS --- */

	/* Affichage du contenu selon adherents O/N */
	#s-user-OUI .s-user-service-non {
		display:none;
	}

	#s-user-NON .s-user-service-oui {
		display:none;
	}

	/* Mise en fome USER-OUI */

	#user-synthese {
		margin: 15px 0px;
	}

	/* Blocks des services */

	.s-service-block {
		padding: 15px 20px;
		margin: 10px 0px;
	}

	.s-service-block-info {
		padding: 5px 0px 10px 70px;
	}

	.s-user-service-oui .s-icon-block {
		width: 45px;
		padding: 12px;
		background-color: #9e9e9e40;
		border-radius: 15px;
		position: absolute;
	}

	p.s-service-title {
		font-size: 14px;
		font-weight: 600;
		padding: 10px 0px 0px;
		margin: 0;
	}

	/* Style par defaut */
	.s-service-block-info span {
		display: flex;
		color: #9e9e9e96;
		font-family: var(--myfont);
	}

	span.s-service-title {
		font-weight: 500;
	}

	.s-sub-OUI {
		color: #777777!important;
	}

	/* Couleurs des services selon les services utilisés */
	/* SDM */
	#sdm-OUI .s-service-title {
		color: var(--mycolorsdm);
	}
	#sdm-OUI .s-icon-block {
		background-color: var(--mycolorsdm);
	}

	/* Idelibre */
	#idelibre-OUI .s-service-title {
		color: var(--mycoloridelibre);
	}
	#idelibre-OUI .s-icon-block {
		background-color: var(--mycoloridelibre);
	}

	/* Actes*/
	#actes-OUI .s-service-title {
		color: var(--mycoloractes);
	}
	#actes-OUI .s-icon-block {
		background-color: var(--mycoloractes);
	}

	/* PES*/
	#pes-OUI .s-service-title {
		color: var(--mycolorpes);
	}
	#pes-OUI .s-icon-block {
		background-color: var(--mycolorpes);
	}

	/* Parapheur*/
	#parapheur-OUI .s-service-title {
		color: var(--mycolorparapheur);
	}
	#parapheur-OUI .s-icon-block {
		background-color: var(--mycolorparapheur);
	}

	/* GED*/
	#ged-OUI .s-service-title {
		color: var(--mycolorsged);
	}
	#ged-OUI .s-icon-block {
		background-color: var(--mycolorsged);
	}

	/* Pydio*/
	#pydio-OUI .s-service-title {
		color: var(--mycolorpydio);
	}
	#pydio-OUI .s-icon-block {
		background-color: var(--mycolorpydio);
	}

	/* Visio */
	#visio-OUI .s-service-title {
		color: var(--mycolorvisio);
	}
	#visio-OUI .s-icon-block {
		background-color: var(--mycolorvisio);
	}

	/*** Service number ***/
	.s-service-block-num span {
		display: block;
		font-family: var(--myfont);
		line-height: 1.3;}

	.s-service-block-num {
		padding: 15px 12px;
		margin: 15px 0px;
	}

	.s-service-number {
		font-size: 25px;
		font-weight: 700;
		color: var(--mycolor);
	}

	span.s-service-subtitlenumber {
		font-size: 10px;
		font-style: italic;    
		color: #777;
	}

	span.s-service-titlenumber {
		color: var(--mycolor);
		font-weight: 500;
		line-height:1.2;
		margin:5px 0px
	}

	.s-service-block-num .icon {
		margin: 10px;
	}

	/* --- Mise en fome USER-NON --- */

	.s-user-service-non {
		text-align:center;
		padding: 50px;
	}

	.s-user-service-non .s-icon-block {
		background-color: var(--mycolor);
		opacity: 0.8;
		width: 60px;
		border-radius: 15px;
		padding: 12px;
		margin: 0 auto;
	}

	h2.s-user-title-feature {
		font-weight: 600!important;
		color: var(--mycolor);
	}

	.btn-link-user {
		margin:40px 0px;
	}

	.btn-link-user a{
		font-family: var(--myfont);
		border: solid 1px #161A30;
		color: #161A30;
		padding: 8px 12px;
		border-radius: 8px;
		margin: 40px 0px;
	}

	.btn-link-user a:hover {
		background-color: #161A30;
		color: white!important;
		-webkit-transition: background-color 0.5s ease-out;
		-moz-transition: background-color 0.5s ease-out;
		-o-transition: background-color 0.5s ease-out;
		transition: background-color 0.5s ease-out;
	}

	/* Hab */
	.s-block-numberkey {
		background-color: var(--mycolor);
		border-radius: 15px;
		color: white;
		font-family: var(--myfont);
		padding: 15px 20px;
	}

	#user-numberkey .row {
		margin: 0;
	}

	.s-numberkey-block-info {
		padding: 0px 0px 0px 80px;
	}

	.s-icon-numberkey {
		position: absolute;
	}

	p.s-numberkey-number {
		color: white;
		font-size: 16px;
		font-weight: 500;
		margin: 0;
	}

	span.s-numberkey-subtitlenumber {
		font-style: italic;
	}

	img.s-numberkey {
		margin: 0px 10px;
		width: 40px;
	}

	/*** ---- Gestion des conditions d'affichages de la localisation ---- **/
	#loc-geo-org-Région, #loc-geo-org-Département, #loc-geo-org-Intercommunalité {
		display:none;
	}

	/*** ---- Gestion des conditions d'affichages du tableau ---- **/

	#NumberCommunes_Région, #NumberCommunes_Autres, #NumberCommunes_Département, #NumberCommunes_Intercommunalité {
		display:none;
	}

	#NumberEPCI_Région, #NumberEPCI_Autres, #NumberEPCI_Département, #NumberEPCI_Commune {
		display:none;
	}

	/* Table */
	.s-title-Table {
		color: var(--mycolor);
		font-weight: 500;
		margin: 20px 0px -10px 0px!important;
	}

	.serviceInfosTable {
		margin: 20px 0px;
	}

	.serviceTable {
		margin: 20px 0px;
		color: var(--mycolor);
		font-family: var(--myfont);
		border-bottom: 2px solid var(--mycolor);
	}

	.titleTable th {
		background-color: var(--mycolor);
		color: white;
		font-size:11px;
		font-weight: 500;
		padding: 5px;
	}

	th.service_label {
		width: 18px;
	}

	.uts td {
		padding: 5px 0px;
		line-height: 1.1;
		font-size: 11px;
	}

	.serviceNON,.serviceOUI {
		font-size: 20px!important;
		text-align: center;
	}

	td.serviceOUI a {
		color: var(--mycolor);
	}

	td.serviceNON a {
		color: #9e9e9e42;
	}

	table#serviceTableCom tr:nth-child(odd) {
		background-color: #c5c5c540;
	}

	table#serviceTableEPCI tr:nth-child(odd) {
		background-color: #c5c5c540;
	}

	/**
 * Tooltip Styles
 */
 .uts a:hover {
		color: #5fc0c3;
	}

/* Add this attribute to the element that needs a tooltip */
[data-tooltip] {
  position: relative;
  z-index: 2;
  cursor: pointer;
}

/* Hide the tooltip content by default */
[data-tooltip]:before,
[data-tooltip]:after {
  visibility: hidden;
  -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
  filter: progid: DXImageTransform.Microsoft.Alpha(Opacity=0);
  opacity: 0;
  pointer-events: none;
}

/* Position tooltip above the element */
[data-tooltip]:before {
  position: absolute;
  bottom: 150%;
  left: 50%;
  margin-bottom: 5px;
  margin-left: -80px;
  padding: 4px 2px;
  width: 120px;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
  background-color: var(--mycolor);
  color: #fff;
  content: attr(data-tooltip);
  text-align: center;
  font-size: 12px;
  line-height: 1.2;
}

/* Triangle hack to make tooltip look like a speech bubble */
[data-tooltip]:after {
  position: absolute;
  bottom: 150%;
  left: 50%;
  margin-left: -5px;
  width: 0;
  border-top: 5px solid var(--mycolor);
  border-right: 5px solid transparent;
  border-left: 5px solid transparent;
  content: " ";
  font-size: 0;
  line-height: 0;
}

/* Show tooltip content on hover */
[data-tooltip]:hover:before,
[data-tooltip]:hover:after {
  visibility: visible;
  -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=100)";
  filter: progid: DXImageTransform.Microsoft.Alpha(Opacity=100);
  opacity: 1;
}

	

	
	
</style>

<script type="text/javascript">

	// Récupération du code_geo de l'entité selectionnée 
  	var c_geo = [];
    c_geo.push('{{code_insee}}');

	var c_siren = [];
    c_siren.push('{{siren_epci}}');

	// Définition d'une fonction Arrondir et séparateurs de milliers

	function Arrondir( nomber, nbApVirg ) { 
		return ( parseInt(nomber * Math.pow(10,nbApVirg) + 0.5) ) / Math.pow(10,nbApVirg); 
	} 

	function formatMillier( nombre ) { 
	var nbrArrnd = Arrondir(nombre, 0); 
		return new Intl.NumberFormat().format( nbrArrnd ); 
	}    
		

	// Définition d'une fonction get_wfsdata
	function get_wfsdata(url, args, callback) {
			var qs = {
				"service" : "WFS",
				"version" : "2.0.0",
				"request" : "GetFeature",
				"outputFormat" : "application/json"
			};
			$.getJSON(url + $.param($.extend(qs, args)), callback);
		}

	//// COMMUNES
	// Calcul du nombre de service utilisés par une entité

    var services_{{siren}} = "{{service_idelibre}} {{service_sdm}} {{service_actes}} {{service_pes}} {{service_ged}} {{service_visio}} {{service_parapheur}} {{service_pydio}}";
    var nb_service_{{siren}} = services_{{siren}}.split("OUI").length - 1;
    document.getElementById("nb_serv_num_{{siren}}").innerHTML=nb_service_{{siren}};

	// Chiffres clés population pour la commune

	get_wfsdata("https://ows.region-bretagne.fr/geoserver/rb/wfs?",
        {
            "typeNames" : "rp_struct_pop_geom",
            "propertyName" : "p_pop",
            "CQL_FILTER" : "code_geo="+ c_geo +"AND millesime=2018"
        },
        function (data) {    

          // Transformation de la donnée JSON  
          var dataPopC_{{siren}} = data;

          var features_{{siren}} = [];
          features_{{siren}} = dataPopC_{{siren}}.features;

          var jproperties_{{siren}} = dataPopC_{{siren}}.features.map(function (el) { 
            return el.properties; 
          });

          var dataPopC_{{siren}} = jproperties_{{siren}}.map(function(obj) {
            return obj.p_pop;   
		  });	    

          document.getElementById("nb_pop_commune_{{siren}}").innerHTML=formatMillier(dataPopC_{{siren}});
    });

	// Tables des services pour le level Autres 

	 $.getJSON("https://geobretagne.fr/geoserver/megalis/wfs?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&typeName=services_organisme&OUTPUTFORMAT=application/json&PROPERTYNAME=organisme,adherent,service_idelibre,service_sdm,service_actes,service_pes,service_ged,service_visio,service_parapheur,service_pydio&CQL_FILTER=code_insee={{code_insee}}%20AND%20annee=2022%20AND%20level=%27Autres%27", function(result) {
     
        var datajson_{{siren}} = result;

        var dataserviceC_{{siren}} = datajson_{{siren}};

        var features_{{siren}} = [];
        features_{{siren}} = dataserviceC_{{siren}}.features;

        var jproperties_{{siren}} = dataserviceC_{{siren}}.features.map(function (el) { 
            return el.properties; 
        });  
        console.log(jproperties_{{siren}}); 

		// Message quand pas d'adhérents sur la commune
		var noAdherent = jproperties_{{siren}}.length;

		function noAdherentText(a) {
			let result;
			if (a > 0) {
				result = '<p></p>';
			} else {
				result = "<p>Aucun siège social d'organisme adhérent sur ce territoire</p>";
			}
			return result;
		}
		var noa = noAdherentText(noAdherent);
		$(noa).appendTo("#noAdherent_{{siren}}");
        
		// Tableau des adhérents 

        $.each(jproperties_{{siren}}, function(i,data){
		//i is index of array
		var r = "<tr class='uts'>"+
					"<td class='nom_org adherent"+data.adherent+"'>"+data.organisme+"</td>"+
					"<td class='service"+data.service_sdm+"'> <a data-tooltip='Salle des marchés publics : " + data.service_sdm+"'> ● </a></td>"+
					"<td class='service"+data.service_idelibre+"'><a data-tooltip='IdeliBre : " + data.service_idelibre+"'> ● </td>"+
					"<td class='service"+data.service_actes+"'><a data-tooltip='Télétransmission des actes : " + data.service_actes+"'> ● </td>"+
					"<td class='service"+data.service_pes+"'><a data-tooltip='Télétransmission des PES : " + data.service_pes+"'> ● </td>"+
					"<td class='service"+data.service_parapheur+"'><a data-tooltip='Parapheur électronique : " + data.service_parapheur+"'> ● </td>"+
					"<td class='service"+data.service_ged+"'><a data-tooltip='GED : " + data.service_ged+"'> ● </td>"+
					"<td class='service"+data.service_pydio+"'><a data-tooltip='SESF : " + data.service_pydio+"'> ● </td>"+
					"<td class='service"+data.service_visio+"'><a data-tooltip='Visioconférence : " + data.service_visio+"'> ● </td>"+
				"</tr>";
		$(r).appendTo("#serviceTableCom_{{siren}}");
		});
        

    });

	// -------------------------------

	//// EPCI
	
	// Chiffres clés population pour EPCI

	get_wfsdata("https://ows.region-bretagne.fr/geoserver/rb/wfs?",
        {
            "typeNames" : "rp_struct_pop_geom",
            "propertyName" : "p_pop",
            "CQL_FILTER" : "code_geo="+ c_siren +"AND millesime=2018"
        },
        function (data) {    

          // Transformation de la donnée JSON  
          var dataPopE_{{siren}} = data;

          var features_{{siren}} = [];
          features_{{siren}} = dataPopE_{{siren}}.features;

          var jproperties_{{siren}} = dataPopE_{{siren}}.features.map(function (el) { 
            return el.properties; 
          });

          var dataPopE_{{siren}} = jproperties_{{siren}}.map(function(obj) {
            return obj.p_pop;   
		  });	    

          document.getElementById("nb_pop_epci_{{siren}}").innerHTML=formatMillier(dataPopE_{{siren}});
    });

	// Tables des services pour le level Communes

	 $.getJSON("https://geobretagne.fr/geoserver/megalis/wfs?SERVICE=WFS&VERSION=2.0.0&REQUEST=GetFeature&typeName=services_organisme&OUTPUTFORMAT=application/json&PROPERTYNAME=organisme,adherent,service_idelibre,service_sdm,service_actes,service_pes,service_ged,service_visio,service_parapheur,service_pydio&CQL_FILTER=siren_epci={{siren}}%20AND%20annee=2022%20AND%20level=%27Commune%27", function(result) {
     
        var datajson_{{siren}} = result;

        var dataE_{{siren}} = datajson_{{siren}};

        var features_{{siren}} = [];
        features_{{siren}} = dataE_{{siren}}.features;

        var jproperties_{{siren}} = dataE_{{siren}}.features.map(function (el) { 
            return el.properties; 
        });  
        console.log(jproperties_{{siren}}); 
        
        $.each(jproperties_{{siren}}, function(i,data){
       //i is index of array
       var r = "<tr class='uts'>"+
                 "<td class='nom_org adherent"+data.adherent+"'>"+data.organisme+"</td>"+
                 "<td class='service"+data.service_sdm+"'> <a data-tooltip='Salle des marchés publics : " + data.service_sdm+"'> ● </a></td>"+
                 "<td class='service"+data.service_idelibre+"'><a data-tooltip='IdeliBre : " + data.service_idelibre+"'> ● </td>"+
                 "<td class='service"+data.service_actes+"'><a data-tooltip='Télétransmission des actes : " + data.service_actes+"'> ● </td>"+
                 "<td class='service"+data.service_pes+"'><a data-tooltip='Télétransmission des PES : " + data.service_pes+"'> ● </td>"+
                 "<td class='service"+data.service_parapheur+"'><a data-tooltip='Parapheur électronique : " + data.service_parapheur+"'> ● </td>"+
                 "<td class='service"+data.service_ged+"'><a data-tooltip='GED : " + data.service_ged+"'> ● </td>"+
				 "<td class='service"+data.service_pydio+"'><a data-tooltip='SESF : " + data.service_pydio+"'> ● </td>"+
                 "<td class='service"+data.service_visio+"'><a data-tooltip='Visioconférence : " + data.service_visio+"'> ● </td>"+
               "</tr>";
       $(r).appendTo("#serviceTableEPCI_{{siren}}");
     });
        

    });


</script>

