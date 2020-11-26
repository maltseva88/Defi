import { Component } from "@angular/core";

import { files } from "../files";

@Component({
  selector: "app-product-list",
  templateUrl: "./file-list.component.html",
  styleUrls: ["./file-list.component.css"]
})
export class fileListComponent {
  files = files;

  share() {
    window.alert("The product has been shared!");
  }
}

/*
Copyright Google LLC. All Rights Reserved.
Use of this source code is governed by an MIT-style license that
can be found in the LICENSE file at https://angular.io/license
*/
