import { Component, OnInit, Input, ViewChild, ChangeDetectorRef, SimpleChange } from '@angular/core';
import { ApiService } from 'src/app/api.service';
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA, MatDialogConfig } from "@angular/material/dialog";
import { CLUB } from 'src/app/dClub';
import { DialogComponent } from '../dialog/dialog.component';
import { MatTableDataSource } from '@angular/material/table';
import { MatSort } from '@angular/material/sort';
import { MatPaginator } from '@angular/material/paginator';

@Component({
  selector: 'app-clubs-list',
  templateUrl: './clubs-list.component.html',
  styleUrls: ['./clubs-list.component.sass']
})
export class ClubsListComponent implements OnInit{
  _childComp: any;

  @Input()
    set childComp(e: any) {
      this._childComp = e;
      this.loadClubs();
  }

  get childComp() {
    return this._childComp;
  }

  displayedColumns: string[] = ['clubId', 'clubName', 'city', 'address', 'contactPerson', 'telephone', 'email', 'update', 'delete'];
  clubsList: CLUB[]=[];
  headers: string[];

  dataSource: MatTableDataSource<CLUB>;

  constructor(
    private api: ApiService,
    public dialog: MatDialog,
    private cdr: ChangeDetectorRef
  ) {}

  openDialog(row){
    const dialogConfig = new MatDialogConfig();

    dialogConfig.disableClose = true;
    dialogConfig.autoFocus = true;
    dialogConfig.width = '350px';
    dialogConfig.data = row;

    const dialogRef = this.dialog.open(DialogComponent, dialogConfig);

    dialogRef.afterClosed().subscribe(res => {
        if(res.event == 'Update'){
          this.loadClubs();
        }
    })

  }

  @ViewChild(MatSort, {static: false}) sort: MatSort;
  @ViewChild('paginator', {static: false}) paginator: MatPaginator;

  ngOnInit(){
    this.loadClubs();
  }

  loadClubs() {
    this.api.getData()
    .subscribe(resp => {
      const keys = resp.headers.keys();
      this.headers = keys.map(key =>
        `${key}: ${resp.headers.get(key)}`);  
      this.dataSource = new MatTableDataSource<CLUB>(resp.body);  
      this.cdr.detectChanges(); 
      this.dataSource.sort = this.sort;
      this.dataSource.paginator = this.paginator;  
    });
  }

  deleteClub(row){
    this.api.deleteData(row.clubId).subscribe(data =>{
      this.clubsList = this.dataSource.data;
      this.clubsList.splice(this.clubsList.findIndex(e => e.clubId === row.clubId), 1);
      this.dataSource = new MatTableDataSource<CLUB>(this.clubsList.slice());
      this.cdr.detectChanges(); 
      this.dataSource.sort = this.sort;
      this.dataSource.paginator = this.paginator; 
    })
  }
}
