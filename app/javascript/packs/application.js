import "bootstrap";
import { bindSweetAlertSampleQuiz } from '../sample_quiz';
import translate from './translate';
import "./particles";
import '../components/select2';
import { challengeButton } from '../components/challenge_button';

challengeButton();
translate();
bindSweetAlertSampleQuiz();
