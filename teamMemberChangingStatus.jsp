<!DOCTYPE html>
<html>
<head>
<title>GateKeeper Form</title>
<link
      href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
      rel="stylesheet">
<link rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
      integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
      crossorigin="anonymous">

<style>
html, body {
      min-height: 100%;
}
.bgColor{
background-color: moccasin;}

body, div, form, input, select, p {
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px;
      color:#666 ;
      line-height: 22px;
     
}

h1 {
      margin: 15px 0;
      font-weight: 400;
}

.testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 3px;
      width:600px;
      margin:auto;
      margin-top:50px;
      background-color: lime;
}

form {
      width: 100%;
      padding: 20px;
      background: #fff;
      box-shadow: 0 2px 5px #ccc;
}

input, select, textarea {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
}

input:hover, select:hover, textarea:hover {
      outline: none;
      border: 1px solid #095484;
}

input {
      width: calc(100% - 10px);
      padding: 5px;
}

select {
      width: 100%;
      padding: 7px 0;
      background: transparent;
}

textarea {
      width: calc(100% - 6px);
}

.item {
      position: relative;
      margin: 10px 0;
}

input[type="date"]::-webkit-inner-spin-button {
      display: none;
}

.item i, input[type="date"]::-webkit-calendar-picker-indicator {
      position: absolute;
      font-size: 20px;
      color: #a9a9a9;
}

.item i {
      right: 2%;
      top: 30px;
      z-index: 1;
}

[type="date"]::-webkit-calendar-picker-indicator {
      right: 1%;
      z-index: 2;
      opacity: 0;
      cursor: pointer;
}

.btn-block {
      margin-top: 20px;
      text-align: center;
}

.button {
      width: 150px;
      padding: 10px;
      border: none;
      -webkit-border-radius: 5px;
      -moz-border-radius: 5px;
      border-radius: 5px;
      background-color: #095484;
      font-size: 16px;
      color: lime;
      cursor: pointer;
}

.button:hover {
      background-color: #0666a3;
}
</style>
</head>
<body class="bgColor" >
      <div class="testbox">
            <form action="/update" method="post">
                  <h1>Changing the status</h1>
                  <div class="item">
                        <p>Ticket Id</p>
                        <div>
                              <input type="text" name="id" value="${tickets.id}" readonly/>
                        </div>
                  </div>
                  <div class="item">
                        <p>User Id</p>
                        <div>
                              <input type="text" name="userId" value="${tickets.userId}" readonly />
                        </div>
                  </div>

                  <div class="item">
                        <p>Description</p>
                        <textarea rows="5" name="description" readonly>${tickets.description}</textarea>
                  </div>
                  <div class="item">
                        <p>Type of Ticket</p>
                        <div>
                              <input type="text" name="typeOfTicket" value="${tickets.typeOfTicket}" readonly/>
                        </div>
                  </div>
                  <div class="item">
                        <p>Priority</p>
                        <div>
                              <input type="text" name="priority" value="${tickets.priority}"readonly/>
                        </div>
                  </div>
                  <div class="item ">
                        <p>Status</p>
                        <select name="status">
                              <option value="${tickets.status}">${tickets.status}</option>
                              <option value="Pending">Pending</option>
                              <option value="Closed">Closed</option>
                        </select>
                  </div>
                                   <div class="item">
                        <p>Contact No.</p>
                        <div>
                              <input type="text" name="contactNo" value="${tickets.contactNo}" readonly />
                        </div>
                  </div>
                                    <div class="item">
                        <p>Work Location</p>
                        <div>
                              <input type="text" name="workLocation" value="${tickets.workLocation}" readonly />
                        </div>
                  </div>
                  <div class="btn-block">
                        <input type="submit" value="Submit" class="button button:hover">
                  </div>
            </form>
      </div>
</body>
</html>
