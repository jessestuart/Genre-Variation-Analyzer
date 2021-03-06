<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Galahad - ${meta(name: 'app.name')}</title>
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <script type="text/javascript">
            console.log("Hello world");

            console.log("Genres : ${genres}")

            google.load("visualization", "1", {packages:["corechart"]});
            google.setOnLoadCallback(drawChart);
            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Age', 'Weight'],
                    [8, 12],
                    [4, 5.5],
                    [11, 14],
                    [4, 5],
                    [3, 3.5],
                    [6.5, 7]
                ]);

//                var data = new google.visualization.DataTable();
//                data.addColumn('number', 'Age');
//                data.addColumn('number', 'Cluster1');
//                data.addColumn('number', 'Cluster2');
//                data.addColumn('number', 'Cluster3');
//                data.addRows(6);
//
//                // First value. Since it belongs to serie1 it has
//                // data in the 0th column (x-axis) and 1st column (y-axis for Serie1)
//                data.setValue(0, 0, 8);
//                data.setValue(0, 1, 12);
//
//                // Second value. Since it belongs to serie2 it has
//                // data in the 0th column (x-axis) and 2nd column (y-axis for Serie2)
//                data.setValue(1, 0, 4);
//                data.setValue(1, 2, 5.5);
//
//                // Further values. Since they all belong to serie3, they have
//                // data in the 0th column (x-axis) and 3nd column (y-axis for Serie3)
//                data.setValue(2, 0, 11);
//                data.setValue(2, 3, 14);
//                data.setValue(3, 0, 4);
//                data.setValue(3, 3, 4.5);
//                data.setValue(4, 0, 3);
//                data.setValue(4, 3, 3.5);
//                data.setValue(5, 0, 6.5);
//                data.setValue(5, 3, 7);
//
//                var options = {
////                    title: 'Age vs. Weight comparison',
//                    hAxis: {title: 'First principal component', minValue:0, maxValue:15},
//                    vAxis: {title: 'Second principal component', minValue:0, maxValue:15},
//                    series: {
//                        0:{color:'blue', pointsize:'4'},
//                        1:{color:'black', pointsize:'4'},
//                        2:{color:'red', pointsize:'4'}
//                    },
//                    legend: 'right'
//
//                };

                var chart = new google.visualization.ScatterChart(document.getElementById('chart_div'))
                chart.draw(data);
            }
        </script>
	</head>

	<body>
        <div class="billboard">
            <r:img dir="images" file="billboard.jpg" />
            <div class="billboard-caption">
              <h1>Linguistic Variation Visualization.</h1>
              <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              %{--<g:link class="btn btn-lg btn-primary" controller="registration">Sign up today</g:link>--}%
            </div>
        </div>

        %{--<div>--}%
            %{--<%--}%
                %{--["hi", "hi", "hello", "hi"].each {--}%
                    %{--out << "<li>$it</li>"--}%
                %{--}--}%
                %{--out << "<li>${testVar}</li>"--}%
%{--//                graph1.each {--}%
%{--//                    out << "<li>$it</li>"--}%
%{--//                }--}%
            %{--%>--}%
        %{--</div>--}%
        %{--Welcome to the app, the date today is ${date}.--}%
        %{--<g:form action="submitData">--}%
            %{--<g:textArea name="formData"></g:textArea>--}%
            %{--<g:submitButton name="submitData" value="Submit data"></g:submitButton>--}%
        %{--</g:form>--}%

        <div id="chart_div" style="width:1000px; height:1000px; margin:0 auto"></div>

        <!--
		<div class="row marketing">
			<div class="col-md-4">
				<img class="img-circle" data-src="holder.js/140x140" alt="Generic placeholder image">
                <h2>Heading</h2>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
                <p><a class="btn btn-default" href="javascript:void(0)">View details »</a></p>
			</div>
			<div class="col-md-4">
				<img class="img-circle" data-src="holder.js/140x140" alt="Generic placeholder image">
                <h2>Heading</h2>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
                <p><a class="btn btn-default" href="javascript:void(0)">View details »</a></p>
			</div>
				<div class="col-md-4">
				<img class="img-circle" data-src="holder.js/140x140" alt="Generic placeholder image">
                <h2>Heading</h2>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
                <p><a class="btn btn-default" href="javascript:void(0)">View details »</a></p>
			</div>
		</div>

		<hr class="featurette-divider">

        <div class="row featurette">
            <div class="col-md-7">
				<h2>First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
				<p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-responsive" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
			</div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-5">
            <img class="featurette-image img-responsive" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
          </div>
          <div class="col-md-7">
            <h2 class="featurette-heading">Oh yeah, it's that good. <span class="text-muted">See for yourself.</span></h2>
            <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
            <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-responsive" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
          </div>
        </div>
        -->
        
	</body>
</html>
