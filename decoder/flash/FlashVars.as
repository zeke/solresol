package {
  public class FlashVars {

    public function FlashVars() {
      trace ("FlashVars is a static class and should not be instantiated.")
    }

    public static function process(flash_vars) {
      var vars:Object = [];
      for (var k in flash_vars) vars[k] = flash_vars[k];
			
			// Set defaults
			var d = new Object()
			d.padding = "5"

			// Fill in defaults when needed
			for (k in d) {
  			if (vars[k] == undefined) vars[k] = d[k]
			}
			
		  // Convert to real data types where necessary
      var booleans:Array = new Array()
      var numbers:Array = new Array('margin')
      for (k in vars) {
        if (booleans.indexOf(k) > -1) vars[k] = (vars[k] == "true" || vars[k] == "1") ? true : false
        if (numbers.indexOf(k) > -1) vars[k] = Number(vars[k])
      }
            
      return vars
    }
        
  }
}