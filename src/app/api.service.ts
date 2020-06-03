import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders, HttpResponse } from '@angular/common/http';
import { CLUB } from './dClub';
import { Observable, of }  from 'rxjs';
import { catchError } from 'rxjs/internal/operators';


@Injectable()

export class ApiService {
    constructor(
        private http: HttpClient
    ){}

    getData(): Observable<HttpResponse<CLUB[]>>{
        return this.http.get<CLUB[]>('https://localhost:44388/api/DClubs', { observe: 'response' });
    }

    getDataById(clubId: number): Observable<CLUB>{
        const url = `https://localhost:44388/api/DClubs/${clubId}`;
        return this.http.get<CLUB>(url);
    }

    postData(danceClubs: CLUB): Observable<CLUB> {
        console.log('danceClubs', danceClubs);
        return this.http.post<CLUB>('https://localhost:44388/api/DClubs', danceClubs).pipe(
            catchError(this.handleError('postData', danceClubs))
        );
    }

    updateData(clubId:number, danceClubs: CLUB): Observable<CLUB> {
        const url = 'https://localhost:44388/api/DClubs/';
        return this.http.put<CLUB>(url + clubId, danceClubs).pipe(
            catchError(this.handleError('updateData', danceClubs))
        );
    }

    deleteData(clubId:string): Observable<CLUB> {
        const url = `https://localhost:44388/api/DClubs/${clubId}`;
        return this.http.delete<CLUB>(url);
    }

    private handleError<T>(operation = 'operation', result?: T) {
        return (error: any): Observable<T> => {
          console.error(error);
          this.log(`${operation} failed: ${error.message}`);
      
          return of(result as T);
        };
      }
      
      private log(message: string) {
        console.log(message);
      }
}