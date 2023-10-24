package gerson.abby.diagnosisdb.controllers;

import gerson.abby.diagnosisdb.models.DataDiagnosis;
import gerson.abby.diagnosisdb.models.Diagnosis;
import gerson.abby.diagnosisdb.repositories.DiagnosisRepository;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/diagnose")
public class DiagnosisController {

    private final DiagnosisRepository diagnoseRepo;
    public DiagnosisController(DiagnosisRepository diagnoseRepo){

        this.diagnoseRepo = diagnoseRepo;
    }

    ////////////////////////CREATE///////////////////////////
    @PostMapping("")
    public Diagnosis createDiagnosis(@RequestBody DataDiagnosis diagnosis){
        diagnosis.setCar(diagnoseRepo.findCarById(1));

        return diagnoseRepo.save(new Diagnosis(diagnosis));
    }


    ////////////////////////READ///////////////////////////


    ////////////////////////UPDATE///////////////////////////


    ////////////////////////DELETE///////////////////////////
}
