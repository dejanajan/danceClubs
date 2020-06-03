import { Component, OnInit, Output } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { ApiService } from '../api.service';
import { CLUB } from '../dClub';

@Component({
  selector: 'app-clubs',
  templateUrl: './clubs.component.html',
  styleUrls: ['./clubs.component.sass']
})
export class ClubsComponent implements OnInit {

  public dClubDetails: FormGroup;
  parentComp: CLUB[] = [];


   constructor(
      private api: ApiService
  ) {
    this.dClubDetails = new FormGroup({
      ClubName: new FormControl("", [Validators.required, Validators.minLength(3)]),
      City: new FormControl("", [Validators.required]),
      Address: new FormControl("", Validators.required),
      ContactPerson: new FormControl("", Validators.required),
      Telephone: new FormControl("", Validators.required),
      Email: new FormControl("", [Validators.required, Validators.email])
    })
  }

 

  ngOnInit(): void {

  }

  addClub(_dClubDetails: any){
    console.log('click');
    this.api.postData(this.dClubDetails.value).subscribe(data =>{
      this.parentComp = this.dClubDetails.value;
    });
  }

}
