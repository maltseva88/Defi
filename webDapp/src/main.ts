import "./polyfills";

import { enableProdMode } from "@angular/core";
import { platformBrowserDynamic } from "@angular/platform-browser-dynamic";
import { environment } from "./environments/environment";

import { AppModule } from "./app/app.module";

if (environment.production) {
  enableProdMode();
}

platformBrowserDynamic()
  .bootstrapModule(AppModule)
  .then(ref => {
    // Ensure Angular destroys itself on hot reloads.
    if (window["ngRef"]) {
      window["ngRef"].destroy();
    }
    window["ngRef"] = ref;

    // Otherise, log the boot error
  })
  .catch(err => console.error(err));

/*
Copyright Google LLC. All Rights Reserved.
Use of this source code is governed by an MIT-style license that
can be found in the LICENSE file at https://angular.io/license
*/
