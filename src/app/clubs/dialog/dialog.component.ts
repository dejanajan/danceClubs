import { Component, Inject, OnInit, Output, EventEmitter } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { CLUB } from 'src/app/dClub';
import { FormGroup, FormBuilder } from '@angular/forms';
import { ApiService } from 'src/app/api.service';

@Component({
  selector: 'app-dialog',
  templateUrl: './dialog.component.html',
  styleUrls: ['./dialog.component.sass']
})
export class DialogComponent implements OnInit  {

  updateClubForm: FormGroup;
  dataFromList: CLUB;

  constructor(
    private api: ApiService,
    private fb: FormBuilder,
    public dialogRef: MatDialogRef<DialogComponent>,
    @Inject(MAT_DIALOG_DATA) public data: CLUB)
    { 
      this.dataFromList = data;
    }

  ngOnInit(){
      this.updateClubForm = this.fb.group({
        ClubId: [this.dataFromList.clubId],
        ClubName: [this.dataFromList.clubName],
        City: [this.dataFromList.city],
        Address: [this.dataFromList.address],
        ContactPerson: [this.dataFromList.contactPerson],
        Telephone: [this.dataFromList.telephone],
        Email: [this.dataFromList.email]
      });
  }

  updateClub(){
    this.api.updateData(this.dataFromList.clubId, this.updateClubForm.value).subscribe(resp =>{
      this.dialogRef.close({event: 'Update', data: this.updateClubForm.value});
    })
  }

  close() {
      this.dialogRef.close({event:'Cancel'});
  }

}
