<%--
  Created by IntelliJ IDEA.
  User: jdstuart
  Date: 4/2/14
  Time: 11:40 AM
--%>

<!doctype html>
<html>
    <head>
    <meta name="layout" content="main"/>
    <title>Galahad - ${meta(name: 'app.name')}</title>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
        google.load("visualization", "1", {packages: ["corechart"]});
        google.setOnLoadCallback(drawChart1);
        google.setOnLoadCallback(drawChart2);
        function drawChart1() {
            var data = new google.visualization.DataTable();
            var genres = ${genres};
            var rows = ${graph1};
            %{--var genreToCluster = ${genreMap};--}%

            var genreMap = [-1, 1, 2, 1, 0, 3, 1, 1, 2, 1, 1, 4, 5, 3, 3, 0, 0, 0, 2, 3, 2];


            data.addColumn('number', 'X value');
            data.addColumn('number', 'FC JK FT MS');
            data.addColumn('number', 'BL ES GV JO NF NP');
            data.addColumn('number', 'EM LT TW SM');
            data.addColumn('number', 'SP CT DT');
            data.addColumn('number', 'TG');
            data.addColumn('number', 'TC');
            data.addRows(rows.length)


            for (var i=0; i<rows.length; i++) {
                var row = rows[i];
//                console.log(genres[i] + " : " + row[0], row[1]);

                // Determine cluster
                var genreId = genres[i];
                var clusterId = genreMap[genreId]+1;
//                console.log("genre Id + cluster ID : ", genreId, clusterId);
                data.setValue(i, 0, row[0]*-1);
                data.setValue(i, clusterId, row[1]);
            }

            var options = {
                        title: 'Document regions for components one and two',
                hAxis: {title: 'First principal component',
                        viewWindowMode:'explicit',
                        viewWindow:{
                            min:-8, max:8
                        }
                },
                vAxis: {title: 'Second principal component'}, // minValue: -4, maxValue: 8},
                series: {
                    0: {color: 'red'},
                    1: {color: 'blue'},
                    2: {color: 'FC2FFC'},
                    3: {color: 'black'},
                    4: {color: 'green'},
                    5: {color: 'AF7B1E'}
                },
                legend: 'right',
                pointSize: 5

            };

            var chart = new google.visualization.ScatterChart(document.getElementById('chart_div'))
            chart.draw(data, options);
        }
        function drawChart2() {
            var data = new google.visualization.DataTable();
            var genres = ${genres};
            var rows = ${graph2};
            %{--var genreToCluster = ${genreMap};--}%

            var genreMap = [-1, 1, 2, 1, 0, 3, 1, 1, 2, 1, 1, 4, 5, 3, 3, 0, 0, 0, 2, 3, 2];


            data.addColumn('number', 'X value');
            data.addColumn('number', 'FC JK FT MS');
            data.addColumn('number', 'BL ES GV JO NF NP');
            data.addColumn('number', 'EM LT TW SM');
            data.addColumn('number', 'SP CT DT');
            data.addColumn('number', 'TG');
            data.addColumn('number', 'TC');
            data.addRows(rows.length)


            for (var i=0; i<rows.length; i++) {
                var row = rows[i];
                console.log(genres[i] + " : " + row[0], row[1]);

                // Determine cluster
                var genreId = genres[i];
                var clusterId = genreMap[genreId]+1;
//                console.log("genre Id + cluster ID : ", genreId, clusterId);
                data.setValue(i, 0, row[0]);
                data.setValue(i, clusterId, row[1]*-1);
            }

            var options = {
                title: 'Document regions for components three and four',
                hAxis: {title: 'Third principal component',
                        viewWindowMode:'explicit',
                        viewWindow:{
                            min:-6, max:6
                        }
                },
                vAxis: {title: 'Fourth principal component'}, // minValue: -4, maxValue: 8},
                series: {
                    0: {color: 'red'},
                    1: {color: 'blue'},
                    2: {color: 'FC2FFC'},
                    3: {color: 'black'},
                    4: {color: 'green'},
                    5: {color: 'AF7B1E'}
                },
                legend: 'right',
                pointSize:5
            };

            var chart = new google.visualization.ScatterChart(document.getElementById('chart_div_2'))
            chart.draw(data, options);
        }


    </script>
    </head>

    <body>
        %{--<div class="billboard">--}%
        %{--<r:img dir="images" file="billboard.jpg"/>--}%
        %{--<div class="billboard-caption">--}%
            %{--<h1>Linguistic Variation Visualization.</h1>--}%
    %{----}%
            %{--<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>--}%
            %{--<g:link class="btn btn-lg btn-primary" controller="registration">Sign up today</g:link>--}%
        %{--</div>--}%
        %{--</div>--}%

    %{--<g:form action="submitData">--}%
    %{--<g:textArea name="formData"></g:textArea>--}%
    %{--<g:submitButton name="submitData" value="Submit data"></g:submitButton>--}%
    %{--</g:form>--}%

        <div class="tabbable">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#tab1" data-toggle="tab">1st/2nd Components</a>
                </li>
                <li>
                    <a href="#tab2" data-toggle="tab">3rd/4th Components</a>
                </li>
            </ul>
        </div>

        <div class="tab-content">
            <div class="tab-pane active" id="tab1">
                <div id="chart_div" style="width:1200px; height:1000px; margin:0 auto"></div>
            </div>
            <div class="tab-pane active" id="tab2">
                <div id="chart_div_2" style="width:1200px; height:1000px; margin:0 auto"></div>
            </div>
        </div>

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
