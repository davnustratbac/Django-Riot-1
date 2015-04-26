<search>
  <h2>{ opts.content }</h2>
  <p>Find code monkeys from GitHub</p>

  <form onsubmit={ findDevelopers }>
    <input type="text" name="location">
    <button type="submit">Search</button>
  </form>

  <ul>
    <li each={ items }></li>
  </ul>

  findDevelopers(event) {
    var request = $.get('https://api.github.com/search/users?q=location:' + this.location.value);
    request.success(function(data) {
      this.items = data.items
      console.log(this.items);
    });
    request.error(function(info) {
      console.log(info);
    });
  }


</search>
