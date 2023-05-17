/*
 * An executable.
 */
public const Executable: u32 := 1;

/*
 * A package that can be a dependency.
 */
public const Package: u32 := 2;

/*
 * A library.
 */
public const Library: u32 := 3;

/*
 * Describes an project.
 */
public struct Project 
{
    /*
     * The name of the project. Must match the directory and file name of the description file.
     */
    public name: *u8;
    
    /*
     * The type of project.
     */
    public kind: u32;
    
    /*
     * List of public dependencies. They can be used by dependents.
     */
    public public_dependencies: []*u8;
    
    /*
     * List of private dependencies.
     */
    public private_dependencies: []*u8;
    
    /*
     * Libraries to link with.
     */
    public libraries: []*u8;
    
    /*
     * Archives (static libraries) to include.
     */
    public archives: []*u8;
    
    /*
     * Paths at which the libraries and archives can be found at.
     */
    public library_paths: []*u8;
    
    /*
     * Binary dependencies are copied to the output directory. This can be used for DLLs or similar.
     */
    public binary_dependencies: []*u8;
    
    /*
     * The optimization level.
     */
    public opt_level: u32;
    
    /*
     * Whether to fail the build when there are warnings.
     */
    public warning_as_error_enabled: bool;
    
    /*
     * Whether to ignore assertions.
     */
    public ignoring_assert: bool;
    
    /*
     * Whether to emit special files like the CFG.
     */
    public extra_emission_enabled: bool;
    
    /*
     * Whehter to exclude the runtime. This disables some functionality.
     */
    public runtime_excluded: bool;
    
    /*
     * Whehter to exclude the standard library.
     */
    public std_excluded: bool;
}