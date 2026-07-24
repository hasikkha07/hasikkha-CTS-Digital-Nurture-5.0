import { Routes } from '@angular/router';
import { Home } from './pages/home/home';
import { StudentList } from './pages/student-list/student-list';
import { CourseList } from './pages/course-list/course-list';
import { StudentProfile } from './pages/student-profile/student-profile';

export const routes: Routes = [
  { path: '', component: Home },
  { path: 'students', component: StudentList },
  { path: 'courses', component: CourseList },
  { path: 'profile', component: StudentProfile }
];