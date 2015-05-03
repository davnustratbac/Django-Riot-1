/**
* Search Tag
*/
<search>
  <h1>{ opts.content }</h1>
  <p class="lead">Find code monkeys from GitHub</p>

  <form class="form-inline" onsubmit={ findDevelopers }>
    <div class="form-group">
      <input type="text" class="form-control" name="location">  
    </div>

    <button class="btn btn-default" type="submit">Search</button>
  </form>

  <list items={ items }></list>

  var self = this;

  this.findDevelopers = function(event) {
    var request = axios.get('https://api.github.com/search/users?q=location:' + this.location.value);
    request.success(function(data) {
      self.items = data.items;
      self.update();
    });
    request.error(function(info) {
      console.log(info);
    });
  }

  this.on('mount', function() {
    console.log('mount');
  });

  this.on('update', function(data) {
    console.log('update');
  });
</search>



/**
* List Tag
*/
<list>
  <ul>
    <li each={ opts.items }>
      <a href={ html_url }>{ login }</a>
    </li>
  </ul>
</list>