
test(
    "Fixture tests for number",
    function () {

        var fixtures = new Test.Jackalope.Fixtures ({
            "fixture_dir" : "../test_fixtures/",
            "validator"   : new Jackalope.Schema.Validator ()
        });

        fixtures.run_fixtures_for_type('number');
    }
);