import { Component } from "@angular/core";

@Component({
  selector: "app-root",
  templateUrl: "./app.component.html",
  styleUrls: ["./app.component.css"]
})
export class AppComponent {
  url;
  format;
  onSelectFile(event) {
    const file = event.target.files && event.target.files[0];
    if (file) {
      var reader = new FileReader();
      reader.readAsDataURL(file);
      if (file.type.indexOf("image") > -1) {
        this.format = "image";
      } else if (file.type.indexOf("video") > -1) {
        this.format = "video";
      }
      reader.onload = event => {
        this.url = (<FileReader>event.target).result;
      };
    }
  }
}

/*
Copyright Google LLC. All Rights Reserved.
Use of this source code is governed by an MIT-style license that
can be found in the LICENSE file at https://angular.io/license
*/
