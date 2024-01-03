var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

// Node.js(Servlet + TomcatWAS)
app.listen(9999); // WAS포트번호 지정

app.get("/", function(reqq, ress) {
	var html = "<html><body>";
	html += "<marquee>hi</marquee>";
	html += "</body></html>";
	ress.send(html);
}); 

// http://195.168.9.43:9999/paramTest?x=3
app.get("/paramTest", function(rq, rs) {
	// rq.getParameter("x")
	var xxx = rq.query.x;	// req.query.파라메터명
	rs.send(xxx);
});

// http://195.168.9.43:9999/calculate?x=3&y=5
app.get("/calculate", function(req, res){
	var xx = req.query.x * 1;
	var yy = req.query.y * 1;
	var a = xx + yy;
	var b = xx - yy;
	var c = xx * yy;
	var d = xx / yy;
	var html = "<html><body>";
	html += "<h1>"+a+"</h1>";
	html += "<h1>"+b+"</h1>";
	html += "<h1>"+c+"</h1>";
	html += "<h1>"+d+"</h1>";
	html += "</body></html>"
	res.send(html);
});
// 사칙연산 결과가 <h1></h1> x 4로 나오게

// app.post();


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
